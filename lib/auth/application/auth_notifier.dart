import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reop_viewer/auth/application/auth_state.dart';
import 'package:reop_viewer/auth/infrastructure/github_authenticator.dart';

typedef AuthUriCallback = Future<Uri> Function(Uri authorizationUrl);

class AuthNotifier extends StateNotifier<AuthState> {
  final GithubAuthenticator _authenticator;
  AuthNotifier(this._authenticator) : super(const AuthState.initial());

  Future<void> checkAndUpdateAuthStatus() async {
    state = (await _authenticator.isSignedIn())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();
  }

  Future<void> signIn(AuthUriCallback authorizationCallback) async {
    final grant = _authenticator.createGrant();
    final redirectUrl =
        await authorizationCallback(_authenticator.getAuthorizationUrl(grant));
    final failureOrSuccess = await _authenticator.handleAuthorizationResponse(
      grant,
      redirectUrl.queryParameters,
    );

    state = failureOrSuccess.fold(
      (failure) => AuthState.failure(failure),
      (r) => const AuthState.authenticated(),
    );
    grant.close();
  }

  Future<void> signOut() async {
    final failureOrSuccess = await _authenticator.signOut();

    state = failureOrSuccess.fold(
      (failure) => AuthState.failure(failure),
      (r) => const AuthState.unauthenticated(),
    );
  }
}

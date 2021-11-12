import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reop_viewer/auth/application/auth_notifier.dart';
import 'package:reop_viewer/auth/application/auth_state.dart';
import 'package:reop_viewer/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:reop_viewer/auth/infrastructure/credentials_storage/credentials_storage_impl.dart';
import 'package:reop_viewer/auth/infrastructure/github_authenticator.dart';
import 'package:reop_viewer/auth/infrastructure/oauth2_interceptor.dart';
import 'package:riverpod/riverpod.dart';

final flutterSecureStorageProvider =
    Provider((ref) => const FlutterSecureStorage());

final dioForAuthProvider = Provider((ref) => Dio());

final oAuth2InterceptorProvider = Provider(
  (ref) => OAuth2Interceptor(
    ref.watch(githubAuthenticatorProvider),
    ref.watch(authNotifierProvider.notifier),
    ref.watch(dioForAuthProvider),
  ),
);

final credentialsStorageProvider = Provider<CredentialsStorage>(
  (ref) => CredentialsStorageImpl(ref.watch(flutterSecureStorageProvider)),
);

final githubAuthenticatorProvider = Provider(
  (ref) => GithubAuthenticator(
    ref.watch(credentialsStorageProvider),
    ref.watch(dioForAuthProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(githubAuthenticatorProvider),
  ),
);

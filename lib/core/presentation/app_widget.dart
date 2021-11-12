import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reop_viewer/auth/application/auth_state.dart';
import 'package:reop_viewer/auth/shared/providers.dart';
import 'package:reop_viewer/core/presentation/routes/app_router.gr.dart';
import 'package:reop_viewer/core/shared/providers.dart';

final initializationProvider = FutureProvider<Unit?>((ref) async {
  await ref.read(sembastProvider).init();
  ref.read(dioProvider)
    ..options = BaseOptions(
      headers: {
        'Accept': 'application/vnd.github.v3.html+json',
      },
    )
    ..interceptors.add(
      ref.read(oAuth2InterceptorProvider),
    );
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthStatus();
  return unit;
});

class AppWidget extends StatelessWidget {
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ProviderListener(
      provider: initializationProvider,
      onChange: (context, value) {},
      child: ProviderListener<AuthState>(
        provider: authNotifierProvider,
        onChange: (context, state) {
          state.maybeMap(
            orElse: () {},
            authenticated: (_) {
              appRouter.pushAndPopUntil(
                const StarredReposRoute(),
                predicate: (route) => false,
              );
            },
            unauthenticated: (_) {
              appRouter.pushAndPopUntil(
                const SignInRoute(),
                predicate: (route) => false,
              );
            },
          );
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Repo Viewer',
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:reop_viewer/auth/presentation/authorization_page.dart';
import 'package:reop_viewer/auth/presentation/sign_in_page.dart';
import 'package:reop_viewer/home/repos/starred-repos/presentation/starred_repos_page.dart';
import 'package:reop_viewer/splash/presentation/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage, path: '/sign-in'),
    MaterialRoute(page: AuthorizationPage, path: '/auth'),
    MaterialRoute(page: StarredReposPage, path: '/starred'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}

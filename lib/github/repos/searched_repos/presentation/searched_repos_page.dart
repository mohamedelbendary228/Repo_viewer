import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reop_viewer/auth/shared/providers.dart';
import 'package:reop_viewer/core/presentation/routes/app_router.gr.dart';
import 'package:reop_viewer/github/core/shared/providers.dart';
import 'package:reop_viewer/github/repos/core/presentation/paginated_repos_list_view.dart';
import 'package:reop_viewer/search/presentation/search_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchedReposPage extends StatefulWidget {
  final String searchTerm;

  const SearchedReposPage({
    Key? key,
    required this.searchTerm,
  }) : super(key: key);

  @override
  _SearchedReposPageState createState() => _SearchedReposPageState();
}

class _SearchedReposPageState extends State<SearchedReposPage> {
  @override
  void initState() {
    super.initState();
    // ref.read(searchedReposNotifierProvider.notifier).getNextStarredReposPage();
    Future.microtask(
      () => context
          .read(searchedReposNotifierProvider.notifier)
          .getFirstSearchedReposPage(widget.searchTerm),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBar(
        title: widget.searchTerm,
        hint: 'Search all repositories...',
        onShouldNavigateToResultPage: (searchTerm) {
          AutoRouter.of(context).pushAndPopUntil(
            SearchedReposRoute(searchTerm: searchTerm),
            predicate: (route) => route.settings.name == StarredReposRoute.name,
          );
        },
        onSignOutButtonPressed: () {
          // ref.read(authNotifierProvider.notifier).signOut();
          context.read(authNotifierProvider.notifier).signOut();
        },
        body: PaginatedReposListView(
          paginatedReposNotifierProvider: searchedReposNotifierProvider,
          getNextPage: (/*ref*/ context) {
            // ref
            //     .read(searchedReposNotifierProvider.notifier)
            //     .getNextStarredReposPage();
            context
                .read(searchedReposNotifierProvider.notifier)
                .getNextSearchedReposPage(widget.searchTerm);
          },
          noResultsMessage:
              "This is all we could find for your search term. Really...",
        ),
      ),
    );
  }
}

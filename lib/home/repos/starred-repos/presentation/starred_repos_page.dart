import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reop_viewer/auth/shared/providers.dart';

class StarredReposPage extends ConsumerWidget {
  const StarredReposPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final authNotifier = watch(authNotifierProvider.notifier);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            authNotifier.signOut();
          },
          child: const Text('sign out'),
        ),
      ),
    );
  }
}

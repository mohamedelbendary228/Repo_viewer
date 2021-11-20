import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reop_viewer/core/shared/providers.dart';
import 'package:reop_viewer/search/application/search_history_notifier.dart';
import 'package:reop_viewer/search/infrastructure/search_history_repository.dart';

final searchHistoryRepositoryProvider = Provider(
  (ref) => SearchHistoryRepository(ref.watch(sembastProvider)),
);

final searchHistoryNotifierProvider =
    StateNotifierProvider<SearchHistoryNotifier, AsyncValue<List<String>>>(
  (ref) => SearchHistoryNotifier(
    ref.watch(searchHistoryRepositoryProvider),
  ),
);

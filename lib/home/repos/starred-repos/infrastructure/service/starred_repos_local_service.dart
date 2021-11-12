import 'package:reop_viewer/core/infrastructure/sembast_database.dart';
import 'package:reop_viewer/home/core/infrastructure/model/github_repo_dto.dart';
import 'package:reop_viewer/home/core/infrastructure/pagination_config.dart';
import 'package:sembast/sembast.dart';
import 'package:collection/collection.dart';

class StarredReposLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = intMapStoreFactory.store('starred_repos');

  StarredReposLocalService(this._sembastDatabase);

  Future<void> upsertPage(List<GithubRepoDTO> dtos, int page) async {
    final sembastPage = page - 1;

    await _store
        .records(
          dtos.mapIndexed(
            (index, _) => index + PaginationConfig.itemsPerPage * sembastPage,
          ),
        )
        .put(
          _sembastDatabase.instance,
          dtos.map((e) => e.toJson()).toList(),
        );
  }

  Future<List<GithubRepoDTO>> getPage(int page) async {
    final sembastPage = page - 1;

    final records = await _store.find(
      _sembastDatabase.instance,
      finder: Finder(
        limit: PaginationConfig.itemsPerPage,
        offset: PaginationConfig.itemsPerPage * sembastPage,
      ),
    );
    return records.map((e) => GithubRepoDTO.fromJson(e.value)).toList();
  }
}

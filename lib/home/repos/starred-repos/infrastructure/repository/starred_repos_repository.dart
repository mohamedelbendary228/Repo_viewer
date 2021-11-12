import 'package:dartz/dartz.dart';
import 'package:reop_viewer/core/domain/fresh.dart';
import 'package:reop_viewer/core/infrastructure/network_exception.dart';
import 'package:reop_viewer/home/core/domain/entities/github_repo.dart';
import 'package:reop_viewer/home/core/domain/github_failure.dart';
import 'package:reop_viewer/home/core/infrastructure/model/github_repo_dto.dart';
import 'package:reop_viewer/home/repos/starred-repos/infrastructure/service/starred_repos_local_service.dart';
import 'package:reop_viewer/home/repos/starred-repos/infrastructure/service/starred_repos_remote_service.dart';

class StarredReposRepository {
  final StarredReposRemoteService _remoteService;
  final StarredReposLocalService _localService;

  StarredReposRepository(this._remoteService, this._localService);

  Future<Either<GithubFailure, Fresh<List<GithubRepo>>>> getStarredReposPage(
    int page,
  ) async {
    try {
      final remotePageItems = await _remoteService.getStarredReposPage(page);
      return right(
        await remotePageItems.when(
          noConnection: (maxPage) async => Fresh(
            entity: await _localService.getPage(page).then(
                  (_) => _.toDomain(),
                ),
            isFresh: false,
            isNextPageAvailable: page < maxPage,
          ),
          notModified: (maxPage) async => Fresh(
            entity: await _localService.getPage(page).then(
                  (_) => _.toDomain(),
                ),
            isFresh: true,
            isNextPageAvailable: page < maxPage,
          ),
          withNewDate: (data, maxPage) async {
            await _localService.upsertPage(data, page);
            return Fresh(
              entity: data.toDomain(),
              isFresh: true,
              isNextPageAvailable: page < maxPage,
            );
          },
        ),
      );
    } on RestApiException catch (e) {
      return  left(GithubFailure.api(e.errorCode));
    }
  }

  
}

extension DTOListToDomainList on List<GithubRepoDTO> {
  List<GithubRepo> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}

import 'package:dio/dio.dart';
import 'package:reop_viewer/core/infrastructure/remote_response.dart';
import 'package:reop_viewer/home/core/infrastructure/model/github_repo_dto.dart';

class StarredReposRemoteService {
  final Dio _dio;

  StarredReposRemoteService(this._dio);

  Future<RemoteResponse<List<GithubRepoDTO>>> getStarredReposPage(
    int page,
  ) async {}
}

import 'package:dio/dio.dart';
import 'package:reop_viewer/core/infrastructure/network_exception.dart';
import 'package:reop_viewer/core/infrastructure/remote_response.dart';
import 'package:reop_viewer/home/core/infrastructure/github_headers_cache.dart';
import 'package:reop_viewer/home/core/infrastructure/model/github_repo_dto.dart';
import 'package:reop_viewer/core/infrastructure/dio_extensions.dart';

class StarredReposRemoteService {
  final Dio _dio;
  final GithubHeadersCache _headersCache;

  StarredReposRemoteService(this._dio, this._headersCache);

  Future<RemoteResponse<List<GithubRepoDTO>>> getStarredReposPage(
    int page,
  ) async {
    final token = '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';
    final accept = 'application/vnd.github.v3.html+json';
    final requestUri = Uri.http(
      'api.github.com',
      '/user/starred',
      {'page': '$page'},
    );

    final previouseHeaders = await _headersCache.getHeaders(requestUri);

    try {
      final response = _dio.getUri(
        requestUri,
        options: Options(
          headers: {
            'Authorization': 'bearer $token',
            'Accept': accept,
            'If-None-Match': previouseHeaders?.etag ?? ''
          },
        ),
      );
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}

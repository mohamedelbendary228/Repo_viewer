import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reop_viewer/home/core/domain/entities/user.dart';

part 'github_repo.freezed.dart';

@freezed
class GithubRepo with _$GithubRepo {
  const GithubRepo._();
  const factory GithubRepo({
    required User owner,
    required String repoName,
    required String description,
    required int stargazersCount,
  }) = _GithubRepo;

  String get fullName => '${owner.name}/$repoName';
}

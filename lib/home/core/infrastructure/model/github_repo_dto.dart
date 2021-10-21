import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reop_viewer/home/core/domain/entities/github_repo.dart';
import 'package:reop_viewer/home/core/infrastructure/model/user_dto.dart';

part 'github_repo_dto.freezed.dart';
part 'github_repo_dto.g.dart';

String _descriptionFromJson(Object? json) {
  return (json as String?) ?? '';
}

@freezed
class GithubRepoDTO with _$GithubRepoDTO {
  const GithubRepoDTO._();
  const factory GithubRepoDTO({
    required UserDTO owner,
    required String repoName,
    @JsonKey(fromJson: _descriptionFromJson) required String description,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
  }) = _GithubRepoTDO;

  factory GithubRepoDTO.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoDTOFromJson(json);

  factory GithubRepoDTO.fromDomain(GithubRepo _) {
    return GithubRepoDTO(
      owner: UserDTO.formDomain(_.owner),
      repoName: _.repoName,
      description: _.description,
      stargazersCount: _.stargazersCount,
    );
  }

  GithubRepo toDomain() {
    return GithubRepo(
      owner: owner.toDomain(),
      repoName: repoName,
      description: description,
      stargazersCount: stargazersCount,
    );
  }
}

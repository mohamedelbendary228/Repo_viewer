// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GithubRepoTDO _$_$_GithubRepoTDOFromJson(Map<String, dynamic> json) {
  return _$_GithubRepoTDO(
    owner: UserDTO.fromJson(json['owner'] as Map<String, dynamic>),
    repoName: json['repoName'] as String,
    description: _descriptionFromJson(json['description']),
    stargazersCount: json['stargazers_count'] as int,
  );
}

Map<String, dynamic> _$_$_GithubRepoTDOToJson(_$_GithubRepoTDO instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'repoName': instance.repoName,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
    };

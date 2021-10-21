// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'github_repo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepoDTO _$GithubRepoDTOFromJson(Map<String, dynamic> json) {
  return _GithubRepoTDO.fromJson(json);
}

/// @nodoc
class _$GithubRepoDTOTearOff {
  const _$GithubRepoDTOTearOff();

  _GithubRepoTDO call(
      {required UserDTO owner,
      required String repoName,
      @JsonKey(fromJson: _descriptionFromJson) required String description,
      @JsonKey(name: 'stargazers_count') required int stargazersCount}) {
    return _GithubRepoTDO(
      owner: owner,
      repoName: repoName,
      description: description,
      stargazersCount: stargazersCount,
    );
  }

  GithubRepoDTO fromJson(Map<String, Object> json) {
    return GithubRepoDTO.fromJson(json);
  }
}

/// @nodoc
const $GithubRepoDTO = _$GithubRepoDTOTearOff();

/// @nodoc
mixin _$GithubRepoDTO {
  UserDTO get owner => throw _privateConstructorUsedError;
  String get repoName => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _descriptionFromJson)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepoDTOCopyWith<GithubRepoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoDTOCopyWith<$Res> {
  factory $GithubRepoDTOCopyWith(
          GithubRepoDTO value, $Res Function(GithubRepoDTO) then) =
      _$GithubRepoDTOCopyWithImpl<$Res>;
  $Res call(
      {UserDTO owner,
      String repoName,
      @JsonKey(fromJson: _descriptionFromJson) String description,
      @JsonKey(name: 'stargazers_count') int stargazersCount});

  $UserDTOCopyWith<$Res> get owner;
}

/// @nodoc
class _$GithubRepoDTOCopyWithImpl<$Res>
    implements $GithubRepoDTOCopyWith<$Res> {
  _$GithubRepoDTOCopyWithImpl(this._value, this._then);

  final GithubRepoDTO _value;
  // ignore: unused_field
  final $Res Function(GithubRepoDTO) _then;

  @override
  $Res call({
    Object? owner = freezed,
    Object? repoName = freezed,
    Object? description = freezed,
    Object? stargazersCount = freezed,
  }) {
    return _then(_value.copyWith(
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserDTOCopyWith<$Res> get owner {
    return $UserDTOCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$GithubRepoTDOCopyWith<$Res>
    implements $GithubRepoDTOCopyWith<$Res> {
  factory _$GithubRepoTDOCopyWith(
          _GithubRepoTDO value, $Res Function(_GithubRepoTDO) then) =
      __$GithubRepoTDOCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserDTO owner,
      String repoName,
      @JsonKey(fromJson: _descriptionFromJson) String description,
      @JsonKey(name: 'stargazers_count') int stargazersCount});

  @override
  $UserDTOCopyWith<$Res> get owner;
}

/// @nodoc
class __$GithubRepoTDOCopyWithImpl<$Res>
    extends _$GithubRepoDTOCopyWithImpl<$Res>
    implements _$GithubRepoTDOCopyWith<$Res> {
  __$GithubRepoTDOCopyWithImpl(
      _GithubRepoTDO _value, $Res Function(_GithubRepoTDO) _then)
      : super(_value, (v) => _then(v as _GithubRepoTDO));

  @override
  _GithubRepoTDO get _value => super._value as _GithubRepoTDO;

  @override
  $Res call({
    Object? owner = freezed,
    Object? repoName = freezed,
    Object? description = freezed,
    Object? stargazersCount = freezed,
  }) {
    return _then(_GithubRepoTDO(
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      repoName: repoName == freezed
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GithubRepoTDO extends _GithubRepoTDO {
  const _$_GithubRepoTDO(
      {required this.owner,
      required this.repoName,
      @JsonKey(fromJson: _descriptionFromJson) required this.description,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount})
      : super._();

  factory _$_GithubRepoTDO.fromJson(Map<String, dynamic> json) =>
      _$_$_GithubRepoTDOFromJson(json);

  @override
  final UserDTO owner;
  @override
  final String repoName;
  @override
  @JsonKey(fromJson: _descriptionFromJson)
  final String description;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;

  @override
  String toString() {
    return 'GithubRepoDTO(owner: $owner, repoName: $repoName, description: $description, stargazersCount: $stargazersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GithubRepoTDO &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.repoName, repoName) ||
                const DeepCollectionEquality()
                    .equals(other.repoName, repoName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.stargazersCount, stargazersCount) ||
                const DeepCollectionEquality()
                    .equals(other.stargazersCount, stargazersCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(repoName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(stargazersCount);

  @JsonKey(ignore: true)
  @override
  _$GithubRepoTDOCopyWith<_GithubRepoTDO> get copyWith =>
      __$GithubRepoTDOCopyWithImpl<_GithubRepoTDO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GithubRepoTDOToJson(this);
  }
}

abstract class _GithubRepoTDO extends GithubRepoDTO {
  const factory _GithubRepoTDO(
          {required UserDTO owner,
          required String repoName,
          @JsonKey(fromJson: _descriptionFromJson) required String description,
          @JsonKey(name: 'stargazers_count') required int stargazersCount}) =
      _$_GithubRepoTDO;
  const _GithubRepoTDO._() : super._();

  factory _GithubRepoTDO.fromJson(Map<String, dynamic> json) =
      _$_GithubRepoTDO.fromJson;

  @override
  UserDTO get owner => throw _privateConstructorUsedError;
  @override
  String get repoName => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: _descriptionFromJson)
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GithubRepoTDOCopyWith<_GithubRepoTDO> get copyWith =>
      throw _privateConstructorUsedError;
}

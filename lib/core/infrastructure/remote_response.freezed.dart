// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RemoteResponseTearOff {
  const _$RemoteResponseTearOff();

  _NoConnection<T> noConnection<T>() {
    return _NoConnection<T>();
  }

  _NoTModified<T> notModified<T>() {
    return _NoTModified<T>();
  }

  _WithNewData<T> withNewDate<T>(T data) {
    return _WithNewData<T>(
      data,
    );
  }
}

/// @nodoc
const $RemoteResponse = _$RemoteResponseTearOff();

/// @nodoc
mixin _$RemoteResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() notModified,
    required TResult Function(T data) withNewDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? notModified,
    TResult Function(T data)? withNewDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NoTModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NoTModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteResponseCopyWith<T, $Res> {
  factory $RemoteResponseCopyWith(
          RemoteResponse<T> value, $Res Function(RemoteResponse<T>) then) =
      _$RemoteResponseCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$RemoteResponseCopyWithImpl<T, $Res>
    implements $RemoteResponseCopyWith<T, $Res> {
  _$RemoteResponseCopyWithImpl(this._value, this._then);

  final RemoteResponse<T> _value;
  // ignore: unused_field
  final $Res Function(RemoteResponse<T>) _then;
}

/// @nodoc
abstract class _$NoConnectionCopyWith<T, $Res> {
  factory _$NoConnectionCopyWith(
          _NoConnection<T> value, $Res Function(_NoConnection<T>) then) =
      __$NoConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$NoConnectionCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res>
    implements _$NoConnectionCopyWith<T, $Res> {
  __$NoConnectionCopyWithImpl(
      _NoConnection<T> _value, $Res Function(_NoConnection<T>) _then)
      : super(_value, (v) => _then(v as _NoConnection<T>));

  @override
  _NoConnection<T> get _value => super._value as _NoConnection<T>;
}

/// @nodoc

class _$_NoConnection<T> extends _NoConnection<T> {
  const _$_NoConnection() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() notModified,
    required TResult Function(T data) withNewDate,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? notModified,
    TResult Function(T data)? withNewDate,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NoTModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewDate,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NoTModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewDate,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection<T> extends RemoteResponse<T> {
  const factory _NoConnection() = _$_NoConnection<T>;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$NoTModifiedCopyWith<T, $Res> {
  factory _$NoTModifiedCopyWith(
          _NoTModified<T> value, $Res Function(_NoTModified<T>) then) =
      __$NoTModifiedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$NoTModifiedCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res>
    implements _$NoTModifiedCopyWith<T, $Res> {
  __$NoTModifiedCopyWithImpl(
      _NoTModified<T> _value, $Res Function(_NoTModified<T>) _then)
      : super(_value, (v) => _then(v as _NoTModified<T>));

  @override
  _NoTModified<T> get _value => super._value as _NoTModified<T>;
}

/// @nodoc

class _$_NoTModified<T> extends _NoTModified<T> {
  const _$_NoTModified() : super._();

  @override
  String toString() {
    return 'RemoteResponse<$T>.notModified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoTModified<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() notModified,
    required TResult Function(T data) withNewDate,
  }) {
    return notModified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? notModified,
    TResult Function(T data)? withNewDate,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NoTModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewDate,
  }) {
    return notModified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NoTModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewDate,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified(this);
    }
    return orElse();
  }
}

abstract class _NoTModified<T> extends RemoteResponse<T> {
  const factory _NoTModified() = _$_NoTModified<T>;
  const _NoTModified._() : super._();
}

/// @nodoc
abstract class _$WithNewDataCopyWith<T, $Res> {
  factory _$WithNewDataCopyWith(
          _WithNewData<T> value, $Res Function(_WithNewData<T>) then) =
      __$WithNewDataCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$WithNewDataCopyWithImpl<T, $Res>
    extends _$RemoteResponseCopyWithImpl<T, $Res>
    implements _$WithNewDataCopyWith<T, $Res> {
  __$WithNewDataCopyWithImpl(
      _WithNewData<T> _value, $Res Function(_WithNewData<T>) _then)
      : super(_value, (v) => _then(v as _WithNewData<T>));

  @override
  _WithNewData<T> get _value => super._value as _WithNewData<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_WithNewData<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_WithNewData<T> extends _WithNewData<T> {
  const _$_WithNewData(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'RemoteResponse<$T>.withNewDate(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WithNewData<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$WithNewDataCopyWith<T, _WithNewData<T>> get copyWith =>
      __$WithNewDataCopyWithImpl<T, _WithNewData<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() notModified,
    required TResult Function(T data) withNewDate,
  }) {
    return withNewDate(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? notModified,
    TResult Function(T data)? withNewDate,
    required TResult orElse(),
  }) {
    if (withNewDate != null) {
      return withNewDate(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection<T> value) noConnection,
    required TResult Function(_NoTModified<T> value) notModified,
    required TResult Function(_WithNewData<T> value) withNewDate,
  }) {
    return withNewDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection<T> value)? noConnection,
    TResult Function(_NoTModified<T> value)? notModified,
    TResult Function(_WithNewData<T> value)? withNewDate,
    required TResult orElse(),
  }) {
    if (withNewDate != null) {
      return withNewDate(this);
    }
    return orElse();
  }
}

abstract class _WithNewData<T> extends RemoteResponse<T> {
  const factory _WithNewData(T data) = _$_WithNewData<T>;
  const _WithNewData._() : super._();

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WithNewDataCopyWith<T, _WithNewData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

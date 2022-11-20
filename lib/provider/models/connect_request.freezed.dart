// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connect_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConnectRequest _$ConnectRequestFromJson(Map<String, dynamic> json) {
  return _ConnectRequest.fromJson(json);
}

/// @nodoc
mixin _$ConnectRequest {
  String get name => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectRequestCopyWith<ConnectRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectRequestCopyWith<$Res> {
  factory $ConnectRequestCopyWith(
          ConnectRequest value, $Res Function(ConnectRequest) then) =
      _$ConnectRequestCopyWithImpl<$Res, ConnectRequest>;
  @useResult
  $Res call({String name, String device});
}

/// @nodoc
class _$ConnectRequestCopyWithImpl<$Res, $Val extends ConnectRequest>
    implements $ConnectRequestCopyWith<$Res> {
  _$ConnectRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectRequestCopyWith<$Res>
    implements $ConnectRequestCopyWith<$Res> {
  factory _$$_ConnectRequestCopyWith(
          _$_ConnectRequest value, $Res Function(_$_ConnectRequest) then) =
      __$$_ConnectRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String device});
}

/// @nodoc
class __$$_ConnectRequestCopyWithImpl<$Res>
    extends _$ConnectRequestCopyWithImpl<$Res, _$_ConnectRequest>
    implements _$$_ConnectRequestCopyWith<$Res> {
  __$$_ConnectRequestCopyWithImpl(
      _$_ConnectRequest _value, $Res Function(_$_ConnectRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? device = null,
  }) {
    return _then(_$_ConnectRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConnectRequest implements _ConnectRequest {
  const _$_ConnectRequest({required this.name, required this.device});

  factory _$_ConnectRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ConnectRequestFromJson(json);

  @override
  final String name;
  @override
  final String device;

  @override
  String toString() {
    return 'ConnectRequest(name: $name, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectRequestCopyWith<_$_ConnectRequest> get copyWith =>
      __$$_ConnectRequestCopyWithImpl<_$_ConnectRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConnectRequestToJson(
      this,
    );
  }
}

abstract class _ConnectRequest implements ConnectRequest {
  const factory _ConnectRequest(
      {required final String name,
      required final String device}) = _$_ConnectRequest;

  factory _ConnectRequest.fromJson(Map<String, dynamic> json) =
      _$_ConnectRequest.fromJson;

  @override
  String get name;
  @override
  String get device;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectRequestCopyWith<_$_ConnectRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

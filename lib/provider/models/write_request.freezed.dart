// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'write_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WriteRequest _$WriteRequestFromJson(Map<String, dynamic> json) {
  return _WriteRequest.fromJson(json);
}

/// @nodoc
mixin _$WriteRequest {
  String get name => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteRequestCopyWith<WriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteRequestCopyWith<$Res> {
  factory $WriteRequestCopyWith(
          WriteRequest value, $Res Function(WriteRequest) then) =
      _$WriteRequestCopyWithImpl<$Res, WriteRequest>;
  @useResult
  $Res call({String name, String device, String message});
}

/// @nodoc
class _$WriteRequestCopyWithImpl<$Res, $Val extends WriteRequest>
    implements $WriteRequestCopyWith<$Res> {
  _$WriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? device = null,
    Object? message = null,
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WriteRequestCopyWith<$Res>
    implements $WriteRequestCopyWith<$Res> {
  factory _$$_WriteRequestCopyWith(
          _$_WriteRequest value, $Res Function(_$_WriteRequest) then) =
      __$$_WriteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String device, String message});
}

/// @nodoc
class __$$_WriteRequestCopyWithImpl<$Res>
    extends _$WriteRequestCopyWithImpl<$Res, _$_WriteRequest>
    implements _$$_WriteRequestCopyWith<$Res> {
  __$$_WriteRequestCopyWithImpl(
      _$_WriteRequest _value, $Res Function(_$_WriteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? device = null,
    Object? message = null,
  }) {
    return _then(_$_WriteRequest(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WriteRequest implements _WriteRequest {
  const _$_WriteRequest(
      {required this.name, required this.device, required this.message});

  factory _$_WriteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_WriteRequestFromJson(json);

  @override
  final String name;
  @override
  final String device;
  @override
  final String message;

  @override
  String toString() {
    return 'WriteRequest(name: $name, device: $device, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WriteRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, device, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WriteRequestCopyWith<_$_WriteRequest> get copyWith =>
      __$$_WriteRequestCopyWithImpl<_$_WriteRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WriteRequestToJson(
      this,
    );
  }
}

abstract class _WriteRequest implements WriteRequest {
  const factory _WriteRequest(
      {required final String name,
      required final String device,
      required final String message}) = _$_WriteRequest;

  factory _WriteRequest.fromJson(Map<String, dynamic> json) =
      _$_WriteRequest.fromJson;

  @override
  String get name;
  @override
  String get device;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_WriteRequestCopyWith<_$_WriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

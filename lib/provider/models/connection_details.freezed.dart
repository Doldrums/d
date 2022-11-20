// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConnectionDetails _$ConnectionDetailsFromJson(Map<String, dynamic> json) {
  return _ConnectionDetails.fromJson(json);
}

/// @nodoc
mixin _$ConnectionDetails {
  String get ip => throw _privateConstructorUsedError;
  String get wifiName => throw _privateConstructorUsedError;
  String get wifiPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectionDetailsCopyWith<ConnectionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionDetailsCopyWith<$Res> {
  factory $ConnectionDetailsCopyWith(
          ConnectionDetails value, $Res Function(ConnectionDetails) then) =
      _$ConnectionDetailsCopyWithImpl<$Res, ConnectionDetails>;
  @useResult
  $Res call({String ip, String wifiName, String wifiPassword});
}

/// @nodoc
class _$ConnectionDetailsCopyWithImpl<$Res, $Val extends ConnectionDetails>
    implements $ConnectionDetailsCopyWith<$Res> {
  _$ConnectionDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? wifiName = null,
    Object? wifiPassword = null,
  }) {
    return _then(_value.copyWith(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      wifiName: null == wifiName
          ? _value.wifiName
          : wifiName // ignore: cast_nullable_to_non_nullable
              as String,
      wifiPassword: null == wifiPassword
          ? _value.wifiPassword
          : wifiPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectionDetailsCopyWith<$Res>
    implements $ConnectionDetailsCopyWith<$Res> {
  factory _$$_ConnectionDetailsCopyWith(_$_ConnectionDetails value,
          $Res Function(_$_ConnectionDetails) then) =
      __$$_ConnectionDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ip, String wifiName, String wifiPassword});
}

/// @nodoc
class __$$_ConnectionDetailsCopyWithImpl<$Res>
    extends _$ConnectionDetailsCopyWithImpl<$Res, _$_ConnectionDetails>
    implements _$$_ConnectionDetailsCopyWith<$Res> {
  __$$_ConnectionDetailsCopyWithImpl(
      _$_ConnectionDetails _value, $Res Function(_$_ConnectionDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? wifiName = null,
    Object? wifiPassword = null,
  }) {
    return _then(_$_ConnectionDetails(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      wifiName: null == wifiName
          ? _value.wifiName
          : wifiName // ignore: cast_nullable_to_non_nullable
              as String,
      wifiPassword: null == wifiPassword
          ? _value.wifiPassword
          : wifiPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConnectionDetails implements _ConnectionDetails {
  const _$_ConnectionDetails(
      {required this.ip, required this.wifiName, required this.wifiPassword});

  factory _$_ConnectionDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ConnectionDetailsFromJson(json);

  @override
  final String ip;
  @override
  final String wifiName;
  @override
  final String wifiPassword;

  @override
  String toString() {
    return 'ConnectionDetails(ip: $ip, wifiName: $wifiName, wifiPassword: $wifiPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionDetails &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.wifiName, wifiName) ||
                other.wifiName == wifiName) &&
            (identical(other.wifiPassword, wifiPassword) ||
                other.wifiPassword == wifiPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ip, wifiName, wifiPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectionDetailsCopyWith<_$_ConnectionDetails> get copyWith =>
      __$$_ConnectionDetailsCopyWithImpl<_$_ConnectionDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConnectionDetailsToJson(
      this,
    );
  }
}

abstract class _ConnectionDetails implements ConnectionDetails {
  const factory _ConnectionDetails(
      {required final String ip,
      required final String wifiName,
      required final String wifiPassword}) = _$_ConnectionDetails;

  factory _ConnectionDetails.fromJson(Map<String, dynamic> json) =
      _$_ConnectionDetails.fromJson;

  @override
  String get ip;
  @override
  String get wifiName;
  @override
  String get wifiPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionDetailsCopyWith<_$_ConnectionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

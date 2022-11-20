// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryResponse _$HistoryResponseFromJson(Map<String, dynamic> json) {
  return _HistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$HistoryResponse {
  List<Message> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryResponseCopyWith<HistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryResponseCopyWith<$Res> {
  factory $HistoryResponseCopyWith(
          HistoryResponse value, $Res Function(HistoryResponse) then) =
      _$HistoryResponseCopyWithImpl<$Res, HistoryResponse>;
  @useResult
  $Res call({List<Message> result});
}

/// @nodoc
class _$HistoryResponseCopyWithImpl<$Res, $Val extends HistoryResponse>
    implements $HistoryResponseCopyWith<$Res> {
  _$HistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryResponseCopyWith<$Res>
    implements $HistoryResponseCopyWith<$Res> {
  factory _$$_HistoryResponseCopyWith(
          _$_HistoryResponse value, $Res Function(_$_HistoryResponse) then) =
      __$$_HistoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Message> result});
}

/// @nodoc
class __$$_HistoryResponseCopyWithImpl<$Res>
    extends _$HistoryResponseCopyWithImpl<$Res, _$_HistoryResponse>
    implements _$$_HistoryResponseCopyWith<$Res> {
  __$$_HistoryResponseCopyWithImpl(
      _$_HistoryResponse _value, $Res Function(_$_HistoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_HistoryResponse(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryResponse implements _HistoryResponse {
  const _$_HistoryResponse({required final List<Message> result})
      : _result = result;

  factory _$_HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryResponseFromJson(json);

  final List<Message> _result;
  @override
  List<Message> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'HistoryResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryResponse &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryResponseCopyWith<_$_HistoryResponse> get copyWith =>
      __$$_HistoryResponseCopyWithImpl<_$_HistoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryResponseToJson(
      this,
    );
  }
}

abstract class _HistoryResponse implements HistoryResponse {
  const factory _HistoryResponse({required final List<Message> result}) =
      _$_HistoryResponse;

  factory _HistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_HistoryResponse.fromJson;

  @override
  List<Message> get result;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryResponseCopyWith<_$_HistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

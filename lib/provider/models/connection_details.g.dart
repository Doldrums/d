// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConnectionDetails _$$_ConnectionDetailsFromJson(Map<String, dynamic> json) =>
    _$_ConnectionDetails(
      ip: json['ip'] as String,
      wifiName: json['wifiName'] as String,
      wifiPassword: json['wifiPassword'] as String,
    );

Map<String, dynamic> _$$_ConnectionDetailsToJson(
        _$_ConnectionDetails instance) =>
    <String, dynamic>{
      'ip': instance.ip,
      'wifiName': instance.wifiName,
      'wifiPassword': instance.wifiPassword,
    };

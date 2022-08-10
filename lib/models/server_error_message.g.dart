// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_error_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerErrorMessage _$$_ServerErrorMessageFromJson(
        Map<String, dynamic> json) =>
    _$_ServerErrorMessage(
      type: json['type'] as String?,
      title: json['title'] as String?,
      detail: json['detail'] as String?,
      field: json['field'] as String?,
    );

Map<String, dynamic> _$$_ServerErrorMessageToJson(
        _$_ServerErrorMessage instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'detail': instance.detail,
      'field': instance.field,
    };

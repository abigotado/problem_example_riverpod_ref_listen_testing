// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerError _$$_ServerErrorFromJson(Map<String, dynamic> json) =>
    _$_ServerError(
      status: json['status'] as int?,
      error: json['error'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ServerErrorMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ServerErrorToJson(_$_ServerError instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'errors': instance.errors,
    };

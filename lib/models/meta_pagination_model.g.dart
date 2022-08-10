// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaPaginationModel _$$_MetaPaginationModelFromJson(
        Map<String, dynamic> json) =>
    _$_MetaPaginationModel(
      count: json['count'] as int?,
      page: json['page'] as int?,
      items: json['items'] as int?,
      pages: json['pages'] as int?,
    );

Map<String, dynamic> _$$_MetaPaginationModelToJson(
        _$_MetaPaginationModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'page': instance.page,
      'items': instance.items,
      'pages': instance.pages,
    };

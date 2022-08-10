// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_direction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudyDirectionModel _$$_StudyDirectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_StudyDirectionModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      order: json['order'] as int?,
      createdAt: const CustomDateTimeJsonConverter()
          .fromJson(json['createdAt'] as String?),
      updatedAt: const CustomDateTimeJsonConverter()
          .fromJson(json['updatedAt'] as String?),
      materialsCount: json['materialsCount'] as int?,
      articlesCount: json['articlesCount'] as int?,
      learningMaterialsCount: json['learningMaterialsCount'] as int?,
      resourcesCount: json['resourcesCount'] as int?,
      webinarsCount: json['webinarsCount'] as int?,
      parentId: json['parentId'] as int?,
      ancestry: json['ancestry'] as String?,
      ancestryDepth: json['ancestryDepth'] as int?,
      childrenCount: json['childrenCount'] as int?,
      cover: json['cover'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_StudyDirectionModelToJson(
        _$_StudyDirectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'order': instance.order,
      'createdAt':
          const CustomDateTimeJsonConverter().toJson(instance.createdAt),
      'updatedAt':
          const CustomDateTimeJsonConverter().toJson(instance.updatedAt),
      'materialsCount': instance.materialsCount,
      'articlesCount': instance.articlesCount,
      'learningMaterialsCount': instance.learningMaterialsCount,
      'resourcesCount': instance.resourcesCount,
      'webinarsCount': instance.webinarsCount,
      'parentId': instance.parentId,
      'ancestry': instance.ancestry,
      'ancestryDepth': instance.ancestryDepth,
      'childrenCount': instance.childrenCount,
      'cover': instance.cover,
      'description': instance.description,
    };

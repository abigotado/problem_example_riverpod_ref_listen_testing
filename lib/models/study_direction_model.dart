import 'package:freezed_annotation/freezed_annotation.dart';

import 'date_time_converter.dart';

part 'study_direction_model.freezed.dart';
part 'study_direction_model.g.dart';

@freezed

/// Model of study direction.
class StudyDirectionModel with _$StudyDirectionModel {
  /// Creates a StudyDirectionModel.
  const factory StudyDirectionModel({
    /// Id of direction.
    final int? id,

    /// Title of direction.
    final String? title,

    /// Order in list.
    final int? order,

    /// Date of creation.
    @CustomDateTimeJsonConverter() final DateTime? createdAt,

    /// Date of last update.
    @CustomDateTimeJsonConverter() final DateTime? updatedAt,

    /// Quantity of materials.
    final int? materialsCount,

    /// Quantity of articles.
    final int? articlesCount,

    /// Quantity of learning materials.
    final int? learningMaterialsCount,

    /// Quantity of resources.
    final int? resourcesCount,

    /// Quantity of webinars.
    final int? webinarsCount,

    /// Id of parent study direction.
    final int? parentId,

    /// Enlistment order of parent directions.
    final String? ancestry,

    /// Quantity of parents.
    final int? ancestryDepth,

    /// Quantity of children materials.
    final int? childrenCount,

    /// Cover icon.
    final String? cover,

    /// Description of direction.
    final String? description,
  }) = _StudyDirectionModel;

  factory StudyDirectionModel.fromJson(final Map<String, Object?> json) =>
      _$StudyDirectionModelFromJson(json);
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'meta_pagination_model.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@freezed

/// Модель пагинации.
class MetaModel with _$MetaModel {
  /// Фабрика для модели пагинации.
  const factory MetaModel({
    /// Параметры пагинации.
    final MetaPaginationModel? pagination,
  }) = _MetaModel;

  /// Создаем метод для конвертации из JSON.
  factory MetaModel.fromJson(final Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);
}

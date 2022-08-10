import 'package:equatable/equatable.dart';

import 'meta_model.dart';

/// Создание модели пагинации.
class PaginationListModel<T> extends Equatable {
  /// Создаем конструктор для модели пагинаций страниц.
  const PaginationListModel({
    required final this.data,
    this.meta,
  });

  /// Создаем фабрику для модели пагинаций страниц.
  factory PaginationListModel.fromJson(
    final Map<String, dynamic>? json,
    final T Function(Map<String, dynamic>) fromJson,
  ) {
    return PaginationListModel<T>(
      data: json != null && json['data'] != null
          ? (json['data'] as List<dynamic>)
              .map<T>((final dynamic e) => fromJson(e as Map<String, dynamic>))
              .toList()
          : <T>[],
      meta: json != null && json['meta'] != null
          ? MetaModel.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
    );
  }

  /// List of T items.
  final List<T> data;

  /// Pagination metadata.
  final MetaModel? meta;

  @override
  List<Object?> get props => <Object?>[data, meta];
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_pagination_model.freezed.dart';
part 'meta_pagination_model.g.dart';

@freezed

///класс модели пагинации
class MetaPaginationModel with _$MetaPaginationModel {
  ///cоздаем факторию модели пагинации
  const factory MetaPaginationModel({
    ///Общее количество элементов
    final int? count,

    ///Общее количество страниц
    final int? page,

    ///Количество элементов на странице
    final int? items,

    ///	Общее количество страниц
    final int? pages,
  }) = _MetaPaginationModel;

  ///создаем fromJson
  factory MetaPaginationModel.fromJson(final Map<String, dynamic> json) =>
      _$MetaPaginationModelFromJson(json);
}

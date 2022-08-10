// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meta_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaPaginationModel _$MetaPaginationModelFromJson(Map<String, dynamic> json) {
  return _MetaPaginationModel.fromJson(json);
}

/// @nodoc
mixin _$MetaPaginationModel {
  ///Общее количество элементов
  int? get count => throw _privateConstructorUsedError;

  ///Общее количество страниц
  int? get page => throw _privateConstructorUsedError;

  ///Количество элементов на странице
  int? get items => throw _privateConstructorUsedError;

  ///	Общее количество страниц
  int? get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaPaginationModelCopyWith<MetaPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaPaginationModelCopyWith<$Res> {
  factory $MetaPaginationModelCopyWith(
          MetaPaginationModel value, $Res Function(MetaPaginationModel) then) =
      _$MetaPaginationModelCopyWithImpl<$Res>;
  $Res call({int? count, int? page, int? items, int? pages});
}

/// @nodoc
class _$MetaPaginationModelCopyWithImpl<$Res>
    implements $MetaPaginationModelCopyWith<$Res> {
  _$MetaPaginationModelCopyWithImpl(this._value, this._then);

  final MetaPaginationModel _value;
  // ignore: unused_field
  final $Res Function(MetaPaginationModel) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? page = freezed,
    Object? items = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_MetaPaginationModelCopyWith<$Res>
    implements $MetaPaginationModelCopyWith<$Res> {
  factory _$$_MetaPaginationModelCopyWith(_$_MetaPaginationModel value,
          $Res Function(_$_MetaPaginationModel) then) =
      __$$_MetaPaginationModelCopyWithImpl<$Res>;
  @override
  $Res call({int? count, int? page, int? items, int? pages});
}

/// @nodoc
class __$$_MetaPaginationModelCopyWithImpl<$Res>
    extends _$MetaPaginationModelCopyWithImpl<$Res>
    implements _$$_MetaPaginationModelCopyWith<$Res> {
  __$$_MetaPaginationModelCopyWithImpl(_$_MetaPaginationModel _value,
      $Res Function(_$_MetaPaginationModel) _then)
      : super(_value, (v) => _then(v as _$_MetaPaginationModel));

  @override
  _$_MetaPaginationModel get _value => super._value as _$_MetaPaginationModel;

  @override
  $Res call({
    Object? count = freezed,
    Object? page = freezed,
    Object? items = freezed,
    Object? pages = freezed,
  }) {
    return _then(_$_MetaPaginationModel(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaPaginationModel implements _MetaPaginationModel {
  const _$_MetaPaginationModel({this.count, this.page, this.items, this.pages});

  factory _$_MetaPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$$_MetaPaginationModelFromJson(json);

  ///Общее количество элементов
  @override
  final int? count;

  ///Общее количество страниц
  @override
  final int? page;

  ///Количество элементов на странице
  @override
  final int? items;

  ///	Общее количество страниц
  @override
  final int? pages;

  @override
  String toString() {
    return 'MetaPaginationModel(count: $count, page: $page, items: $items, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaPaginationModel &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.pages, pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(pages));

  @JsonKey(ignore: true)
  @override
  _$$_MetaPaginationModelCopyWith<_$_MetaPaginationModel> get copyWith =>
      __$$_MetaPaginationModelCopyWithImpl<_$_MetaPaginationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaPaginationModelToJson(
      this,
    );
  }
}

abstract class _MetaPaginationModel implements MetaPaginationModel {
  const factory _MetaPaginationModel(
      {final int? count,
      final int? page,
      final int? items,
      final int? pages}) = _$_MetaPaginationModel;

  factory _MetaPaginationModel.fromJson(Map<String, dynamic> json) =
      _$_MetaPaginationModel.fromJson;

  @override

  ///Общее количество элементов
  int? get count;
  @override

  ///Общее количество страниц
  int? get page;
  @override

  ///Количество элементов на странице
  int? get items;
  @override

  ///	Общее количество страниц
  int? get pages;
  @override
  @JsonKey(ignore: true)
  _$$_MetaPaginationModelCopyWith<_$_MetaPaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

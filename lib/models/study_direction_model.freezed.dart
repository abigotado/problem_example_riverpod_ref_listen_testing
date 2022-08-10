// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'study_direction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudyDirectionModel _$StudyDirectionModelFromJson(Map<String, dynamic> json) {
  return _StudyDirectionModel.fromJson(json);
}

/// @nodoc
mixin _$StudyDirectionModel {
  /// Id of direction.
  int? get id => throw _privateConstructorUsedError;

  /// Title of direction.
  String? get title => throw _privateConstructorUsedError;

  /// Order in list.
  int? get order => throw _privateConstructorUsedError;

  /// Date of creation.
  @CustomDateTimeJsonConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Date of last update.
  @CustomDateTimeJsonConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Quantity of materials.
  int? get materialsCount => throw _privateConstructorUsedError;

  /// Quantity of articles.
  int? get articlesCount => throw _privateConstructorUsedError;

  /// Quantity of learning materials.
  int? get learningMaterialsCount => throw _privateConstructorUsedError;

  /// Quantity of resources.
  int? get resourcesCount => throw _privateConstructorUsedError;

  /// Quantity of webinars.
  int? get webinarsCount => throw _privateConstructorUsedError;

  /// Id of parent study direction.
  int? get parentId => throw _privateConstructorUsedError;

  /// Enlistment order of parent directions.
  String? get ancestry => throw _privateConstructorUsedError;

  /// Quantity of parents.
  int? get ancestryDepth => throw _privateConstructorUsedError;

  /// Quantity of children materials.
  int? get childrenCount => throw _privateConstructorUsedError;

  /// Cover icon.
  String? get cover => throw _privateConstructorUsedError;

  /// Description of direction.
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyDirectionModelCopyWith<StudyDirectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyDirectionModelCopyWith<$Res> {
  factory $StudyDirectionModelCopyWith(
          StudyDirectionModel value, $Res Function(StudyDirectionModel) then) =
      _$StudyDirectionModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      int? order,
      @CustomDateTimeJsonConverter() DateTime? createdAt,
      @CustomDateTimeJsonConverter() DateTime? updatedAt,
      int? materialsCount,
      int? articlesCount,
      int? learningMaterialsCount,
      int? resourcesCount,
      int? webinarsCount,
      int? parentId,
      String? ancestry,
      int? ancestryDepth,
      int? childrenCount,
      String? cover,
      String? description});
}

/// @nodoc
class _$StudyDirectionModelCopyWithImpl<$Res>
    implements $StudyDirectionModelCopyWith<$Res> {
  _$StudyDirectionModelCopyWithImpl(this._value, this._then);

  final StudyDirectionModel _value;
  // ignore: unused_field
  final $Res Function(StudyDirectionModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? order = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? materialsCount = freezed,
    Object? articlesCount = freezed,
    Object? learningMaterialsCount = freezed,
    Object? resourcesCount = freezed,
    Object? webinarsCount = freezed,
    Object? parentId = freezed,
    Object? ancestry = freezed,
    Object? ancestryDepth = freezed,
    Object? childrenCount = freezed,
    Object? cover = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      materialsCount: materialsCount == freezed
          ? _value.materialsCount
          : materialsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      articlesCount: articlesCount == freezed
          ? _value.articlesCount
          : articlesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      learningMaterialsCount: learningMaterialsCount == freezed
          ? _value.learningMaterialsCount
          : learningMaterialsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      resourcesCount: resourcesCount == freezed
          ? _value.resourcesCount
          : resourcesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      webinarsCount: webinarsCount == freezed
          ? _value.webinarsCount
          : webinarsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      ancestry: ancestry == freezed
          ? _value.ancestry
          : ancestry // ignore: cast_nullable_to_non_nullable
              as String?,
      ancestryDepth: ancestryDepth == freezed
          ? _value.ancestryDepth
          : ancestryDepth // ignore: cast_nullable_to_non_nullable
              as int?,
      childrenCount: childrenCount == freezed
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_StudyDirectionModelCopyWith<$Res>
    implements $StudyDirectionModelCopyWith<$Res> {
  factory _$$_StudyDirectionModelCopyWith(_$_StudyDirectionModel value,
          $Res Function(_$_StudyDirectionModel) then) =
      __$$_StudyDirectionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      int? order,
      @CustomDateTimeJsonConverter() DateTime? createdAt,
      @CustomDateTimeJsonConverter() DateTime? updatedAt,
      int? materialsCount,
      int? articlesCount,
      int? learningMaterialsCount,
      int? resourcesCount,
      int? webinarsCount,
      int? parentId,
      String? ancestry,
      int? ancestryDepth,
      int? childrenCount,
      String? cover,
      String? description});
}

/// @nodoc
class __$$_StudyDirectionModelCopyWithImpl<$Res>
    extends _$StudyDirectionModelCopyWithImpl<$Res>
    implements _$$_StudyDirectionModelCopyWith<$Res> {
  __$$_StudyDirectionModelCopyWithImpl(_$_StudyDirectionModel _value,
      $Res Function(_$_StudyDirectionModel) _then)
      : super(_value, (v) => _then(v as _$_StudyDirectionModel));

  @override
  _$_StudyDirectionModel get _value => super._value as _$_StudyDirectionModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? order = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? materialsCount = freezed,
    Object? articlesCount = freezed,
    Object? learningMaterialsCount = freezed,
    Object? resourcesCount = freezed,
    Object? webinarsCount = freezed,
    Object? parentId = freezed,
    Object? ancestry = freezed,
    Object? ancestryDepth = freezed,
    Object? childrenCount = freezed,
    Object? cover = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_StudyDirectionModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      materialsCount: materialsCount == freezed
          ? _value.materialsCount
          : materialsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      articlesCount: articlesCount == freezed
          ? _value.articlesCount
          : articlesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      learningMaterialsCount: learningMaterialsCount == freezed
          ? _value.learningMaterialsCount
          : learningMaterialsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      resourcesCount: resourcesCount == freezed
          ? _value.resourcesCount
          : resourcesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      webinarsCount: webinarsCount == freezed
          ? _value.webinarsCount
          : webinarsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      ancestry: ancestry == freezed
          ? _value.ancestry
          : ancestry // ignore: cast_nullable_to_non_nullable
              as String?,
      ancestryDepth: ancestryDepth == freezed
          ? _value.ancestryDepth
          : ancestryDepth // ignore: cast_nullable_to_non_nullable
              as int?,
      childrenCount: childrenCount == freezed
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudyDirectionModel implements _StudyDirectionModel {
  const _$_StudyDirectionModel(
      {this.id,
      this.title,
      this.order,
      @CustomDateTimeJsonConverter() this.createdAt,
      @CustomDateTimeJsonConverter() this.updatedAt,
      this.materialsCount,
      this.articlesCount,
      this.learningMaterialsCount,
      this.resourcesCount,
      this.webinarsCount,
      this.parentId,
      this.ancestry,
      this.ancestryDepth,
      this.childrenCount,
      this.cover,
      this.description});

  factory _$_StudyDirectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_StudyDirectionModelFromJson(json);

  /// Id of direction.
  @override
  final int? id;

  /// Title of direction.
  @override
  final String? title;

  /// Order in list.
  @override
  final int? order;

  /// Date of creation.
  @override
  @CustomDateTimeJsonConverter()
  final DateTime? createdAt;

  /// Date of last update.
  @override
  @CustomDateTimeJsonConverter()
  final DateTime? updatedAt;

  /// Quantity of materials.
  @override
  final int? materialsCount;

  /// Quantity of articles.
  @override
  final int? articlesCount;

  /// Quantity of learning materials.
  @override
  final int? learningMaterialsCount;

  /// Quantity of resources.
  @override
  final int? resourcesCount;

  /// Quantity of webinars.
  @override
  final int? webinarsCount;

  /// Id of parent study direction.
  @override
  final int? parentId;

  /// Enlistment order of parent directions.
  @override
  final String? ancestry;

  /// Quantity of parents.
  @override
  final int? ancestryDepth;

  /// Quantity of children materials.
  @override
  final int? childrenCount;

  /// Cover icon.
  @override
  final String? cover;

  /// Description of direction.
  @override
  final String? description;

  @override
  String toString() {
    return 'StudyDirectionModel(id: $id, title: $title, order: $order, createdAt: $createdAt, updatedAt: $updatedAt, materialsCount: $materialsCount, articlesCount: $articlesCount, learningMaterialsCount: $learningMaterialsCount, resourcesCount: $resourcesCount, webinarsCount: $webinarsCount, parentId: $parentId, ancestry: $ancestry, ancestryDepth: $ancestryDepth, childrenCount: $childrenCount, cover: $cover, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudyDirectionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.materialsCount, materialsCount) &&
            const DeepCollectionEquality()
                .equals(other.articlesCount, articlesCount) &&
            const DeepCollectionEquality()
                .equals(other.learningMaterialsCount, learningMaterialsCount) &&
            const DeepCollectionEquality()
                .equals(other.resourcesCount, resourcesCount) &&
            const DeepCollectionEquality()
                .equals(other.webinarsCount, webinarsCount) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.ancestry, ancestry) &&
            const DeepCollectionEquality()
                .equals(other.ancestryDepth, ancestryDepth) &&
            const DeepCollectionEquality()
                .equals(other.childrenCount, childrenCount) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(materialsCount),
      const DeepCollectionEquality().hash(articlesCount),
      const DeepCollectionEquality().hash(learningMaterialsCount),
      const DeepCollectionEquality().hash(resourcesCount),
      const DeepCollectionEquality().hash(webinarsCount),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(ancestry),
      const DeepCollectionEquality().hash(ancestryDepth),
      const DeepCollectionEquality().hash(childrenCount),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_StudyDirectionModelCopyWith<_$_StudyDirectionModel> get copyWith =>
      __$$_StudyDirectionModelCopyWithImpl<_$_StudyDirectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudyDirectionModelToJson(
      this,
    );
  }
}

abstract class _StudyDirectionModel implements StudyDirectionModel {
  const factory _StudyDirectionModel(
      {final int? id,
      final String? title,
      final int? order,
      @CustomDateTimeJsonConverter() final DateTime? createdAt,
      @CustomDateTimeJsonConverter() final DateTime? updatedAt,
      final int? materialsCount,
      final int? articlesCount,
      final int? learningMaterialsCount,
      final int? resourcesCount,
      final int? webinarsCount,
      final int? parentId,
      final String? ancestry,
      final int? ancestryDepth,
      final int? childrenCount,
      final String? cover,
      final String? description}) = _$_StudyDirectionModel;

  factory _StudyDirectionModel.fromJson(Map<String, dynamic> json) =
      _$_StudyDirectionModel.fromJson;

  @override

  /// Id of direction.
  int? get id;
  @override

  /// Title of direction.
  String? get title;
  @override

  /// Order in list.
  int? get order;
  @override

  /// Date of creation.
  @CustomDateTimeJsonConverter()
  DateTime? get createdAt;
  @override

  /// Date of last update.
  @CustomDateTimeJsonConverter()
  DateTime? get updatedAt;
  @override

  /// Quantity of materials.
  int? get materialsCount;
  @override

  /// Quantity of articles.
  int? get articlesCount;
  @override

  /// Quantity of learning materials.
  int? get learningMaterialsCount;
  @override

  /// Quantity of resources.
  int? get resourcesCount;
  @override

  /// Quantity of webinars.
  int? get webinarsCount;
  @override

  /// Id of parent study direction.
  int? get parentId;
  @override

  /// Enlistment order of parent directions.
  String? get ancestry;
  @override

  /// Quantity of parents.
  int? get ancestryDepth;
  @override

  /// Quantity of children materials.
  int? get childrenCount;
  @override

  /// Cover icon.
  String? get cover;
  @override

  /// Description of direction.
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_StudyDirectionModelCopyWith<_$_StudyDirectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

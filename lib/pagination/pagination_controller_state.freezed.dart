// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination_controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginationControllerState<T> {
  /// If true, data is loading.
  bool get isLoading => throw _privateConstructorUsedError;

  /// If true, error has occurred.
  bool get isError => throw _privateConstructorUsedError;

  /// Page of the list.
  int? get page => throw _privateConstructorUsedError;

  /// Quantity of pages of the list.
  int? get totalPages => throw _privateConstructorUsedError;

  /// Error.
  Object? get error => throw _privateConstructorUsedError;

  /// List of items.
  List<T>? get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationControllerStateCopyWith<T, PaginationControllerState<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationControllerStateCopyWith<T, $Res> {
  factory $PaginationControllerStateCopyWith(PaginationControllerState<T> value,
          $Res Function(PaginationControllerState<T>) then) =
      _$PaginationControllerStateCopyWithImpl<T, $Res>;
  $Res call(
      {bool isLoading,
      bool isError,
      int? page,
      int? totalPages,
      Object? error,
      List<T>? items});
}

/// @nodoc
class _$PaginationControllerStateCopyWithImpl<T, $Res>
    implements $PaginationControllerStateCopyWith<T, $Res> {
  _$PaginationControllerStateCopyWithImpl(this._value, this._then);

  final PaginationControllerState<T> _value;
  // ignore: unused_field
  final $Res Function(PaginationControllerState<T>) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? error = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      error: error == freezed ? _value.error : error,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaginationControllerStateCopyWith<T, $Res>
    implements $PaginationControllerStateCopyWith<T, $Res> {
  factory _$$_PaginationControllerStateCopyWith(
          _$_PaginationControllerState<T> value,
          $Res Function(_$_PaginationControllerState<T>) then) =
      __$$_PaginationControllerStateCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isError,
      int? page,
      int? totalPages,
      Object? error,
      List<T>? items});
}

/// @nodoc
class __$$_PaginationControllerStateCopyWithImpl<T, $Res>
    extends _$PaginationControllerStateCopyWithImpl<T, $Res>
    implements _$$_PaginationControllerStateCopyWith<T, $Res> {
  __$$_PaginationControllerStateCopyWithImpl(
      _$_PaginationControllerState<T> _value,
      $Res Function(_$_PaginationControllerState<T>) _then)
      : super(_value, (v) => _then(v as _$_PaginationControllerState<T>));

  @override
  _$_PaginationControllerState<T> get _value =>
      super._value as _$_PaginationControllerState<T>;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? error = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_PaginationControllerState<T>(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      error: error == freezed ? _value.error : error,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc

class _$_PaginationControllerState<T> implements _PaginationControllerState<T> {
  const _$_PaginationControllerState(
      {this.isLoading = false,
      this.isError = false,
      this.page,
      this.totalPages,
      this.error,
      final List<T>? items})
      : _items = items;

  /// If true, data is loading.
  @override
  @JsonKey()
  final bool isLoading;

  /// If true, error has occurred.
  @override
  @JsonKey()
  final bool isError;

  /// Page of the list.
  @override
  final int? page;

  /// Quantity of pages of the list.
  @override
  final int? totalPages;

  /// Error.
  @override
  final Object? error;

  /// List of items.
  final List<T>? _items;

  /// List of items.
  @override
  List<T>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaginationControllerState<$T>(isLoading: $isLoading, isError: $isError, page: $page, totalPages: $totalPages, error: $error, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationControllerState<T> &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_PaginationControllerStateCopyWith<T, _$_PaginationControllerState<T>>
      get copyWith => __$$_PaginationControllerStateCopyWithImpl<T,
          _$_PaginationControllerState<T>>(this, _$identity);
}

abstract class _PaginationControllerState<T>
    implements PaginationControllerState<T> {
  const factory _PaginationControllerState(
      {final bool isLoading,
      final bool isError,
      final int? page,
      final int? totalPages,
      final Object? error,
      final List<T>? items}) = _$_PaginationControllerState<T>;

  @override

  /// If true, data is loading.
  bool get isLoading;
  @override

  /// If true, error has occurred.
  bool get isError;
  @override

  /// Page of the list.
  int? get page;
  @override

  /// Quantity of pages of the list.
  int? get totalPages;
  @override

  /// Error.
  Object? get error;
  @override

  /// List of items.
  List<T>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationControllerStateCopyWith<T, _$_PaginationControllerState<T>>
      get copyWith => throw _privateConstructorUsedError;
}

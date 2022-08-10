// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'server_error_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerErrorMessage _$ServerErrorMessageFromJson(Map<String, dynamic> json) {
  return _ServerErrorMessage.fromJson(json);
}

/// @nodoc
mixin _$ServerErrorMessage {
  String? get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  String? get field => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerErrorMessageCopyWith<ServerErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerErrorMessageCopyWith<$Res> {
  factory $ServerErrorMessageCopyWith(
          ServerErrorMessage value, $Res Function(ServerErrorMessage) then) =
      _$ServerErrorMessageCopyWithImpl<$Res>;
  $Res call({String? type, String? title, String? detail, String? field});
}

/// @nodoc
class _$ServerErrorMessageCopyWithImpl<$Res>
    implements $ServerErrorMessageCopyWith<$Res> {
  _$ServerErrorMessageCopyWithImpl(this._value, this._then);

  final ServerErrorMessage _value;
  // ignore: unused_field
  final $Res Function(ServerErrorMessage) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ServerErrorMessageCopyWith<$Res>
    implements $ServerErrorMessageCopyWith<$Res> {
  factory _$$_ServerErrorMessageCopyWith(_$_ServerErrorMessage value,
          $Res Function(_$_ServerErrorMessage) then) =
      __$$_ServerErrorMessageCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? title, String? detail, String? field});
}

/// @nodoc
class __$$_ServerErrorMessageCopyWithImpl<$Res>
    extends _$ServerErrorMessageCopyWithImpl<$Res>
    implements _$$_ServerErrorMessageCopyWith<$Res> {
  __$$_ServerErrorMessageCopyWithImpl(
      _$_ServerErrorMessage _value, $Res Function(_$_ServerErrorMessage) _then)
      : super(_value, (v) => _then(v as _$_ServerErrorMessage));

  @override
  _$_ServerErrorMessage get _value => super._value as _$_ServerErrorMessage;

  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? field = freezed,
  }) {
    return _then(_$_ServerErrorMessage(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerErrorMessage implements _ServerErrorMessage {
  const _$_ServerErrorMessage({this.type, this.title, this.detail, this.field});

  factory _$_ServerErrorMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ServerErrorMessageFromJson(json);

  @override
  final String? type;
  @override
  final String? title;
  @override
  final String? detail;
  @override
  final String? field;

  @override
  String toString() {
    return 'ServerErrorMessage(type: $type, title: $title, detail: $detail, field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerErrorMessage &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            const DeepCollectionEquality().equals(other.field, field));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(detail),
      const DeepCollectionEquality().hash(field));

  @JsonKey(ignore: true)
  @override
  _$$_ServerErrorMessageCopyWith<_$_ServerErrorMessage> get copyWith =>
      __$$_ServerErrorMessageCopyWithImpl<_$_ServerErrorMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerErrorMessageToJson(
      this,
    );
  }
}

abstract class _ServerErrorMessage implements ServerErrorMessage {
  const factory _ServerErrorMessage(
      {final String? type,
      final String? title,
      final String? detail,
      final String? field}) = _$_ServerErrorMessage;

  factory _ServerErrorMessage.fromJson(Map<String, dynamic> json) =
      _$_ServerErrorMessage.fromJson;

  @override
  String? get type;
  @override
  String? get title;
  @override
  String? get detail;
  @override
  String? get field;
  @override
  @JsonKey(ignore: true)
  _$$_ServerErrorMessageCopyWith<_$_ServerErrorMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

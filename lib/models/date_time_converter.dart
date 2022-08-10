import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

/// JSON String to DateTime converter.
class CustomDateTimeJsonConverter implements JsonConverter<DateTime?, String?> {
  /// Creates a CustomDateTimeConverter.
  const CustomDateTimeJsonConverter();

  @override
  DateTime? fromJson(final String? json) =>
      json == null ? null : DateFormat('yyyy-MM-dd HH:mm:ss').parse(json, true);

  @override
  String? toJson(final DateTime? json) =>
      json == null ? null : DateFormat('yyyy-MM-dd HH:mm:ss').format(json);
}

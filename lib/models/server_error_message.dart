import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_error_message.freezed.dart';
part 'server_error_message.g.dart';

@freezed

/// Error message, which comes from the API.
class ServerErrorMessage with _$ServerErrorMessage {
  /// ServerErrorMessage factory.
  const factory ServerErrorMessage({
    final String? type,
    final String? title,
    final String? detail,
    final String? field,
  }) = _ServerErrorMessage;

  /// Factory for parsing JSON to ServerErrorMessage.
  factory ServerErrorMessage.fromJson(final Map<String, dynamic> json) =>
      _$ServerErrorMessageFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:problem_example_riverpod_ref_listen_testing/models/server_error_message.dart';

part 'server_error.freezed.dart';
part 'server_error.g.dart';

@freezed

/// Error message, which comes from the API.
class ServerError with _$ServerError {
  /// ServerErrorMessage factory.
  const factory ServerError({
    final int? status,
    final String? error,
    final List<ServerErrorMessage>? errors,
  }) = _ServerError;

  /// Factory for parsing JSON to ServerErrorMessage.
  factory ServerError.fromJson(final Map<String, dynamic> json) =>
      _$ServerErrorFromJson(json);
}

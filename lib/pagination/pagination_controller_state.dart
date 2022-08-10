import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_controller_state.freezed.dart';

/// State class for pagination screens.
@freezed
class PaginationControllerState<T> with _$PaginationControllerState<T> {
  /// Factory for generating PaginationControllerState.
  const factory PaginationControllerState({
    /// If true, data is loading.
    @Default(false) final bool isLoading,

    /// If true, error has occurred.
    @Default(false) final bool isError,

    /// Page of the list.
    final int? page,

    /// Quantity of pages of the list.
    final int? totalPages,

    /// Error.
    final Object? error,

    /// List of items.
    final List<T>? items,
  }) = _PaginationControllerState<T>;
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:problem_example_riverpod_ref_listen_testing/models/pagination_list_model.dart';
import 'package:problem_example_riverpod_ref_listen_testing/pagination/pagination_controller_state.dart';

/// Controller abstraction for pagination screens.
abstract class PaginationController<T>
    extends StateNotifier<PaginationControllerState<T>> {
  /// Creates a PaginationController.
  PaginationController() : super(PaginationControllerState<T>()) {
    fetchList();
  }

  /// If true the last page of the list has been loaded.
  bool get isLastPageLoaded =>
      state.page != null &&
      state.totalPages != null &&
      state.totalPages == state.page;

  /// Fetch list and manage states.
  Future<void> fetchList({final bool isRefresh = false}) async {
    if (!isLastPageLoaded || isRefresh) {
      if (!state.isLoading) {
        state = state.copyWith(
          isLoading: true,
          isError: false,
          error: null,
          page: isRefresh ? null : state.page,
          items: isRefresh ? null : state.items,
        );
        final int nextPage = (state.page ?? 0) + 1;
        try {
          final PaginationListModel<T>? pagination =
              await getPagination(nextPage, isRefresh: isRefresh);
          state = state.copyWith(
            isLoading: false,
            items: <T>[
              ...state.items ?? <T>[],
              ...pagination?.data ?? <T>[],
            ],
            page: pagination?.meta?.pagination?.page,
            totalPages: pagination?.meta?.pagination?.pages,
          );
        } catch (e) {
          state = state.copyWith(
            isLoading: false,
            isError: true,
            error: e,
          );
        }
      }
    } else {
      state = state.copyWith(
        isLoading: false,
      );
    }
  }

  /// Load pagination from repository.
  Future<PaginationListModel<T>?> getPagination(
    final int page, {
    final bool isRefresh = false,
  });
}

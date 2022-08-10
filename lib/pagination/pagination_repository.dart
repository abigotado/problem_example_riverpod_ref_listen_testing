import 'package:problem_example_riverpod_ref_listen_testing/models/pagination_list_model.dart';

/// Abstraction for repositories with the list of data.
abstract class PaginationRepository<T> {
  /// Model of list pagination.
  PaginationListModel<T>? paginationModel;

  /// Fetch paginationModel.
  Future<PaginationListModel<T>?> fetchPagination(
    final int page, {
    final bool isRefresh = false,
  }) async {
    try {
      if (paginationModel == null ||
          paginationModel?.meta?.pagination?.page != page ||
          isRefresh) {
        paginationModel = await getPagination(page);
      }
      return paginationModel;
    } catch (e) {
      rethrow;
    }
  }

  /// Get pagination from service.
  Future<PaginationListModel<T>> getPagination([
    final int? page,
  ]);
}

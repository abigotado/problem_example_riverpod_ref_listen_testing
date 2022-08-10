import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:problem_example_riverpod_ref_listen_testing/pagination/pagination_controller.dart';
import 'package:problem_example_riverpod_ref_listen_testing/pagination/pagination_controller_state.dart';
import 'package:problem_example_riverpod_ref_listen_testing/study_directions_repository.dart';

import 'models/pagination_list_model.dart';
import 'models/study_direction_model.dart';

/// Provider of the controller of StudyDirectionsScreen states.
final AutoDisposeStateNotifierProviderFamily<StudyDirectionsController,
        PaginationControllerState<StudyDirectionModel>, String?>
    directionsControllerProvider = StateNotifierProvider.autoDispose.family<
        StudyDirectionsController,
        PaginationControllerState<StudyDirectionModel>,
        String?>(
  (
    final AutoDisposeStateNotifierProviderRef<StudyDirectionsController,
            PaginationControllerState<StudyDirectionModel>>
        ref,
    final String? id,
  ) =>
      StudyDirectionsController(ref.watch(directionsRepositoryProvider(id))),
);

/// The controller of StudyDirectionsScreen states.
class StudyDirectionsController
    extends PaginationController<StudyDirectionModel> {
  /// Creates StudyDirectionsController.
  StudyDirectionsController(this.directionsRepository);

  /// Repository with study directions methods and variables.
  final StudyDirectionsRepository directionsRepository;

  @override
  Future<PaginationListModel<StudyDirectionModel>?> getPagination(
    final int page, {
    final bool isRefresh = false,
  }) {
    return directionsRepository.fetchPagination(page, isRefresh: isRefresh);
  }
}

import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:problem_example_riverpod_ref_listen_testing/pagination/pagination_repository.dart';
import 'package:problem_example_riverpod_ref_listen_testing/study_directions_service.dart';

import 'models/pagination_list_model.dart';
import 'models/study_direction_model.dart';

/// Provider of the StudyDirectionsRepository.
final StateProviderFamily<StudyDirectionsRepository, String?>
    directionsRepositoryProvider =
    StateProvider.family<StudyDirectionsRepository, String?>(
  (final StateProviderRef<StudyDirectionsRepository> ref, final String? id) =>
      StudyDirectionsRepository(ref.watch(directionsServiceProvider(id))),
);

/// Repository with study directions methods and variables.
class StudyDirectionsRepository
    extends PaginationRepository<StudyDirectionModel> {
  /// Creates StudyDirectionsRepository.
  StudyDirectionsRepository(this.service);

  /// Service with study directions API calls.
  final StudyDirectionsService service;

  /// Get directions with pagination data.
  @override
  Future<PaginationListModel<StudyDirectionModel>> getPagination([
    final int? page,
  ]) async {
    return service.getDirections(page);
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:problem_example_riverpod_ref_listen_testing/models/server_error_message.dart';

import 'models/pagination_list_model.dart';
import 'models/server_error.dart';
import 'models/study_direction_model.dart';

/// Provider of AuthorizationService.
final ProviderFamily<StudyDirectionsService, String?>
    directionsServiceProvider =
    Provider.family<StudyDirectionsService, String?>(
  (final ProviderRef<StudyDirectionsService> ref, final String? id) =>
      StudyDirectionsService(id: id),
);

/// Service with study directions API calls.
class StudyDirectionsService {
  /// Creates StudyDirectionsService.
  StudyDirectionsService({this.id});

  /// Parent study direction id.
  final String? id;

  /// Get list of study directions from API.
  Future<PaginationListModel<StudyDirectionModel>> getDirections([
    final int? page,
  ]) async {
    try {
      final response = List<StudyDirectionModel>.filled(
          20, const StudyDirectionModel(title: 'Title'));

      return PaginationListModel<StudyDirectionModel>(data: response);
    } catch (e) {
      throw ServerError(errors: [ServerErrorMessage(detail: e.toString())]);
    }
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:problem_example_riverpod_ref_listen_testing/models/pagination_list_model.dart';
import 'package:problem_example_riverpod_ref_listen_testing/models/server_error.dart';
import 'package:problem_example_riverpod_ref_listen_testing/models/study_direction_model.dart';

final String tDirectionsJson = File(
  'test/random_study_directions_list.json',
).readAsStringSync();

final String tDirectionsJsonSecondPage = File(
  'test/random_study_directions_list_page_2.json',
).readAsStringSync();

final Map<String, dynamic> tDirectionsRawMap =
    jsonDecode(tDirectionsJson) as Map<String, dynamic>;

final Map<String, dynamic> tDirectionsSecondPageRawMap =
    jsonDecode(tDirectionsJsonSecondPage) as Map<String, dynamic>;

final PaginationListModel<StudyDirectionModel> tDirectionsPagination =
    PaginationListModel<StudyDirectionModel>.fromJson(
  tDirectionsRawMap,
  (final Map<String, dynamic> p0) => StudyDirectionModel.fromJson(p0),
);

final PaginationListModel<StudyDirectionModel> tDirectionsPaginationSecondPage =
    PaginationListModel<StudyDirectionModel>.fromJson(
  tDirectionsSecondPageRawMap,
  (final Map<String, dynamic> p0) => StudyDirectionModel.fromJson(p0),
);

final String testErrorJson =
    File('test/random_server_error.json').readAsStringSync();
final Map<String, dynamic> testErrorRawMap =
    jsonDecode(testErrorJson) as Map<String, dynamic>;
final ServerError tServerError = ServerError.fromJson(testErrorRawMap);

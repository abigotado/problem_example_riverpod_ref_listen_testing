import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:problem_example_riverpod_ref_listen_testing/models/study_direction_model.dart';
import 'package:problem_example_riverpod_ref_listen_testing/pagination/pagination_controller_state.dart';
import 'package:problem_example_riverpod_ref_listen_testing/study_directions_controller.dart';
import 'package:problem_example_riverpod_ref_listen_testing/study_directions_repository.dart';
import 'package:problem_example_riverpod_ref_listen_testing/study_directions_screen.dart';

import 'test_constants.dart';
import 'widget_test.mocks.dart';

class MockStudyDirectionsController extends StudyDirectionsController {
  MockStudyDirectionsController(super.directionsRepository);
}

@GenerateMocks(<Type>[StudyDirectionsRepository])
void main() {
  final List<StudyDirectionModel> fullData = tDirectionsPagination.data;
  fullData.addAll(tDirectionsPaginationSecondPage.data);

  final MockStudyDirectionsRepository repository =
      MockStudyDirectionsRepository();

  final AutoDisposeStateNotifierProvider<StudyDirectionsController,
          PaginationControllerState<StudyDirectionModel>> controllerProvider =
      StateNotifierProvider.autoDispose<StudyDirectionsController,
          PaginationControllerState<StudyDirectionModel>>(
    (
      final AutoDisposeStateNotifierProviderRef<StudyDirectionsController,
              PaginationControllerState<StudyDirectionModel>>
          ref,
    ) =>
        MockStudyDirectionsController(repository),
  );

  final Widget app = ProviderScope(
    overrides: <Override>[
      directionsControllerProvider(null)
          .overrideWithProvider(controllerProvider),
    ],
    child: const MaterialApp(
      home: StudyDirectionsScreen(),
    ),
  );

  group('Test StudyDirectionsScreen', () {
    testWidgets('Test components and loading and success states',
        (final WidgetTester tester) async {
      when(repository.fetchPagination(1)).thenAnswer(
        (final Invocation invocation) async => tDirectionsPagination,
      );

      await mockNetworkImagesFor(() async {
        await tester.pumpWidget(app);

        expect(find.text('Направления'), findsOneWidget);

        expect(
          find.byKey(
            const ValueKey<String>('shimmer 0'),
            skipOffstage: false,
          ),
          findsOneWidget,
        );

        await tester.pumpAndSettle();

        await tester.scrollUntilVisible(
          find.text('doloremque'),
          30,
        );

        expect(
          find.text('doloremque'),
          findsOneWidget,
        );

        await tester.scrollUntilVisible(
          find.text('cupiditate'),
          30,
        );

        expect(
          find.text('cupiditate'),
          findsOneWidget,
        );

        expect(find.byType(SvgPicture), findsWidgets);
      });
    });

    testWidgets('Test error state', (final WidgetTester tester) async {
      when(repository.fetchPagination(1)).thenThrow(tServerError);

      await mockNetworkImagesFor(() async {
        await tester.pumpWidget(app);

        expect(find.text('Направления'), findsOneWidget);

        expect(find.byKey(const ValueKey<String>('shimmer 0')), findsOneWidget);

        await tester.pump(const Duration(seconds: 1));
        await tester.pump(const Duration(seconds: 1));
        await tester.pump(const Duration(seconds: 1));
        await tester.pump(const Duration(seconds: 1));
        await tester.pump(const Duration(seconds: 1));
        await tester.pump(const Duration(seconds: 1));

        expect(find.text('Что-то пошло не так'), findsOneWidget);

        await tester.tapAt(const Offset(20, 20));

        expect(find.byKey(const ValueKey<String>('shimmer 0')), findsOneWidget);
      });
    });
  });
}

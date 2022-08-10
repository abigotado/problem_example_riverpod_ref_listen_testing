import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:problem_example_riverpod_ref_listen_testing/pagination/pagination_controller_state.dart';
import 'package:problem_example_riverpod_ref_listen_testing/pagination/pagination_screen.dart';
import 'package:problem_example_riverpod_ref_listen_testing/pagination/scrollable_screen.dart';
import 'package:problem_example_riverpod_ref_listen_testing/study_directions_controller.dart';

import 'models/study_direction_model.dart';

/// Screen with list of study directions.
class StudyDirectionsScreen extends PaginationScreen<StudyDirectionModel> {
  /// Creates a StudyDirectionsScreen.
  const StudyDirectionsScreen({
    final super.key,
    final super.id,
    final StudyDirectionModel? parentDirection,
  }) : super(parent: parentDirection);

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final PaginationControllerState<StudyDirectionModel> state =
        ref.watch(directionsControllerProvider(id));
    final StudyDirectionsController directionsController =
        ref.watch(directionsControllerProvider(id).notifier);
    final StudyDirectionsController readDirectionsController =
        ref.read(directionsControllerProvider(id).notifier);
    final List<StudyDirectionModel>? directions = state.items;

    showModalBottomSheetOnError(
      context,
      ref,
      provider: directionsControllerProvider(id),
      onRefresh: () => readDirectionsController.fetchList(isRefresh: true),
    );

    return ScrollableScreenTemplate<StudyDirectionModel>(
      isPullUpEnabled: !directionsController.isLastPageLoaded,
      isLoading: state.isLoading && state.items != null,
      isError: state.isError && state.items != null,
      isFirstPageLoading: state.isLoading && (state.items?.isEmpty ?? true),
      isFirstPageError: state.isError && (state.items?.isEmpty ?? true),
      isGrid: true,
      isCounterShown: false,
      onLoading: () async => readDirectionsController.fetchList(),
      onRefresh: () async =>
          readDirectionsController.fetchList(isRefresh: true),
      header: parent != null ? '${parent?.title}' : 'Направления обучения',
      headerIcon: parent != null
          ? SvgPicture.network(
              '${parent?.cover}',
              key: const ValueKey<String>('networkTitleSvg'),
              color: Theme.of(context).colorScheme.primary,
            )
          : const SizedBox(),
      itemCount: directions?.length,
      itemBuilder: (final BuildContext context, final int index) {
        return Card(
          child: Column(
            children: [
              Text(directions?[index].title ?? ''),
              Text(directions?[index].materialsCount?.toString() ?? ''),
              directions?[index].cover == null
                  ? const SizedBox()
                  : SvgPicture.network(
                      key: ValueKey<String>(
                        'networkSquareButtonSvg ${directions?[index].id}',
                      ),
                      '${directions?[index].cover}',
                      width: 40,
                      height: 40,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    )
            ],
          ),
        );
      },
    );
  }
}

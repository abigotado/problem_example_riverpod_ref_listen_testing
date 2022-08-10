import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:problem_example_riverpod_ref_listen_testing/pagination/pagination_controller_state.dart';

/// Abstract class for pagination screens.
abstract class PaginationScreen<T> extends HookConsumerWidget {
  /// Creates PaginationScreen<T>.
  const PaginationScreen({final super.key, this.id, this.parent});

  /// Parent item ID.
  final String? id;

  /// Parent item.
  final T? parent;

  /// Show modal bottom sheet with error description.
  void
      showModalBottomSheetOnError<S extends PaginationControllerState<dynamic>>(
    final BuildContext context,
    final WidgetRef ref, {
    required final ProviderListenable<S> provider,
    required final void Function() onRefresh,
  }) =>
          ref.listen<S>(
            provider,
            (
              final S? previousState,
              final S state,
            ) =>
                state.isError && state.items == null
                    ? showModalBottomSheet<Card>(
                        isScrollControlled: true,
                        context: context,
                        builder: (final BuildContext context) {
                          debugPrint('ErrorBottomSheet is shown');
                          return const Card(child: Text('Что-то пошло не так'));
                        },
                      )
                    : null,
          );
}

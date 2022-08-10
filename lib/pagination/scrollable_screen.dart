import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shimmer/shimmer.dart';

/// UI template for scrollable screen.
class ScrollableScreenTemplate<T> extends HookWidget {
  /// Creates a ScrollableScreenTemplate.
  const ScrollableScreenTemplate({
    required this.itemBuilder,
    required this.header,
    required this.headerIcon,
    required this.itemCount,
    this.buttonsRow,
    this.listTitle,
    this.isGrid = false,
    this.isCounterShown = true,
    this.isLoading = false,
    this.isFirstPageLoading = false,
    this.isError = false,
    this.isFirstPageError = false,
    this.isPullUpEnabled = true,
    this.shimmerHeight,
    this.onLoading,
    this.onRefresh,
    final super.key,
  });

  /// Icon, which is displayed in the circle at the header.
  final Widget headerIcon;

  /// Header text.
  final String header;

  /// If the variable is specified, this widget will be displayed between
  /// the header and the body.
  final Widget? buttonsRow;

  /// Title of the list.
  final Widget? listTitle;

  /// Called to build children for the list.
  final Widget? Function(BuildContext, int) itemBuilder;

  /// The total number of children the list can provide.
  final int? itemCount;

  /// If true, returns widgets, specified in [itemBuilder] in a two dimensional
  /// arrangement. If false, returns list of widgets, specified
  /// in [itemBuilder].
  final bool isGrid;

  /// If true, counter of list items is shown.
  final bool isCounterShown;

  /// If true, list's state is loading state.
  final bool isLoading;

  /// If true, list's state is error state.
  final bool isError;

  /// If true, list's state is loading state and list is null or empty.
  final bool isFirstPageLoading;

  /// If true, list's state is error state and list is null or empty.
  final bool isFirstPageError;

  /// When true, pulling up the list is enabled.
  final bool isPullUpEnabled;

  /// Height of the shimmer in list view.
  final double? shimmerHeight;

  /// Method that is triggered when the list is pulled up.
  final Future<void> Function()? onLoading;

  /// Method that is triggered when the list is pulled down.
  final Future<void> Function()? onRefresh;

  @override
  Widget build(final BuildContext context) {
    final int childCount =
        isFirstPageError || isFirstPageLoading ? 10 : (itemCount ?? 0);
    final ValueNotifier<bool> isScrolled = useState(false);
    final ScrollController scrollController = useScrollController();
    useEffect(
      () {
        scrollController.addListener(() async {
          if (scrollController.offset > 1000) {
            isScrolled.value = true;
          } else {
            isScrolled.value = false;
          }
          if (scrollController.position.pixels >
              scrollController.position.maxScrollExtent * 0.8) {
            if (isPullUpEnabled) {
              if (onLoading != null) {
                await onLoading!();
              }
            }
          }
        });
        return () => scrollController.removeListener(() {});
      },
      <Object>['addScrollListener'],
    );

    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: isScrolled.value
          ? FloatingActionButton.small(
              onPressed: () => scrollController.animateTo(
                scrollController.position.minScrollExtent,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              ),
              child: const Icon(Icons.keyboard_arrow_up),
            )
          : null,
      body: RefreshIndicator(
        color: Theme.of(context).colorScheme.secondary,
        onRefresh: onRefresh ?? () async {},
        child: CustomScrollView(
          controller: scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 31.86, 14, 27),
              sliver: SliverToBoxAdapter(
                child: _ScrollableScreenHeader(
                  itemCount: childCount,
                  isCounterShown: isCounterShown,
                  isShimmerShown:
                      isLoading || isFirstPageLoading || isFirstPageError,
                  header: header,
                  headerIcon: headerIcon,
                ),
              ),
            ),
            if (buttonsRow != null)
              SliverPadding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 30),
                sliver: SliverToBoxAdapter(child: buttonsRow),
              ),
            if (listTitle != null)
              SliverPadding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                sliver: SliverToBoxAdapter(
                  child: listTitle,
                ),
              ),
            if (itemCount == 0)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text('Ничего не найдено'),
                ),
              )
            else
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: isLoading || isError ? 10 : 30,
                ),
                sliver: _ScrollableScreenListing(
                  itemBuilder: itemBuilder,
                  childCount: childCount,
                  isGrid: isGrid,
                  isShimmerShown: isFirstPageLoading || isFirstPageError,
                  shimmerHeight: shimmerHeight,
                ),
              ),
            if (isLoading || isError)
              const SliverSafeArea(
                sliver: SliverToBoxAdapter(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _ScrollableScreenHeader extends StatelessWidget {
  const _ScrollableScreenHeader({
    required this.isCounterShown,
    required this.headerIcon,
    required this.header,
    required this.itemCount,
    required this.isShimmerShown,
  });

  final bool isCounterShown;
  final bool isShimmerShown;
  final Widget headerIcon;
  final String header;
  final int itemCount;

  @override
  Widget build(final BuildContext context) {
    final Widget counterContainer = Container(
      padding: const EdgeInsets.only(
        left: 7,
        top: 2,
        right: 7,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Text(
        itemCount.toString(),
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
      ),
    );

    return Row(
      children: <Widget>[
        CircleAvatar(
          key: const ValueKey<String>('header_icon_circle'),
          radius: 45,
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          child: headerIcon,
        ),
        const SizedBox(width: 21.32),
        Expanded(
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  letterSpacing: 0,
                  wordSpacing: 0,
                  height: 1,
                  color: Colors.black,
                ),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 11,
              children: <Widget>[
                for (String w in header.split(' ')) Text(w),
                if (isCounterShown)
                  if (isShimmerShown)
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      loop: 100,
                      child: counterContainer,
                    )
                  else
                    counterContainer
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ScrollableScreenListing extends StatelessWidget {
  const _ScrollableScreenListing({
    required this.isGrid,
    required this.isShimmerShown,
    required this.itemBuilder,
    required this.childCount,
    this.shimmerHeight,
  });

  final bool isGrid;
  final bool isShimmerShown;
  final double? shimmerHeight;
  final Widget? Function(BuildContext, int) itemBuilder;
  final int childCount;

  @override
  Widget build(final BuildContext context) {
    if (isGrid) {
      return SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 17,
          mainAxisSpacing: 17,
        ),
        delegate: SliverChildBuilderDelegate(
          isShimmerShown
              ? (final BuildContext context, final int index) =>
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    loop: 100,
                    key: ValueKey<String>('shimmer $index'),
                    child: const SizedBox.expand(),
                  )
              : itemBuilder,
          childCount: childCount,
        ),
      );
    } else {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          isShimmerShown
              ? (final BuildContext context, final int index) => Padding(
                  padding: const EdgeInsets.only(bottom: 17),
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    loop: 100,
                    key: ValueKey<String>('shimmer $index'),
                    child: const SizedBox(
                      width: double.infinity,
                      height: 300,
                    ),
                  ))
              : itemBuilder,
          childCount: childCount,
        ),
      );
    }
  }
}

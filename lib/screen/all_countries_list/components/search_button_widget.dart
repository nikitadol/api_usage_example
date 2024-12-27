part of '../all_countries_list_screen.dart';

final class _SearchButtonWidget extends StatelessWidget {
  const _SearchButtonWidget();

  static Widget _searchViewBuilder(Iterable<Widget> items) {
    final String term;
    if (items case [final Text text]) {
      term = text.data?.trim() ?? '';
    } else {
      term = '';
    }

    if (term.isEmpty) {
      return Center(
        child: Builder(
          builder: (context) => Text(
            AppLocalizations.of(context)!.typeSomething,
          ),
        ),
      );
    }

    return _SearchList(
      term: term,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (context, controller) => IconButton(
        onPressed: controller.openView,
        icon: const Icon(Icons.search),
      ),
      suggestionsBuilder: (context, controller) => [
        // Workaround for using riverpod with SearchAnchor
        Text(controller.text),
      ],
      viewBuilder: _searchViewBuilder,
    );
  }
}

final class _SearchList extends ConsumerWidget {
  const _SearchList({
    required this.term,
  });

  final String term;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = countriesSearchByTranslationProvider(
      term: term,
    );

    final items = ref.watch(provider);

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: items.when(
        loading: () => const AppLoader(),
        error: (e, s) => AppErrorWidget(
          error: e,
          stackTrace: s,
          retry: () => ref.invalidate(provider),
        ),
        data: (items) => ListView.separated(
          itemCount: items.length,
          itemBuilder: (context, index) => _CountryModelWidget(
            item: items[index],
          ),
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
}

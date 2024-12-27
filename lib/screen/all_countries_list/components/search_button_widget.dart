part of '../all_countries_list_screen.dart';

class _SearchButtonWidget extends StatelessWidget {
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

    return Consumer(
      builder: (context, ref, child) {
        final provider = countriesSearchByTranslationProvider(term: term);
        final items = ref.watch(provider);

        return MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: items.when(
            data: (items) {
              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  return _CountryModelWidget(
                    item: item,
                  );
                },
              );
            },
            error: (e, s) => AppErrorWidget(
              error: e,
              stackTrace: s,
              retry: () => ref.invalidate(provider),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
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

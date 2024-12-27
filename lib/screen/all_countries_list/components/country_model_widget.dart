part of '../all_countries_list_screen.dart';

final class _CountryModelWidget extends StatelessWidget {
  const _CountryModelWidget({
    required this.item,
  });

  final CountryModel item;

  @override
  Widget build(BuildContext context) {
    Widget? image;
    if (item.imageUrl case final imageUrl?) {
      image = Align(
        alignment: Alignment.topLeft,
        child: Image.network(
          imageUrl,
          semanticLabel: item.imageAlt,
        ),
      );
    }

    return ListTile(
      onTap: () => context.router.push(
        CountryInfoRoute(
          name: item.name,
        ),
      ),
      leading: SizedBox(
        width: 98,
        child: image,
      ),
      title: Text(item.name),
      subtitle: Text(item.otherNames),
    );
  }
}

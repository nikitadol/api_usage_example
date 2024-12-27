part of '../country_info_screen.dart';

final class _TextAndImage extends StatelessWidget {
  const _TextAndImage({
    required this.text,
    required this.data,
  });

  final String text;
  final CountryFlags data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        spacing: 8,
        children: [
          Text(text),
          Image.network(
            data.png ?? '',
            semanticLabel: data.alt,
          ),
        ],
      ),
    );
  }
}

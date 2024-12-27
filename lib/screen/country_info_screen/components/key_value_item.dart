part of '../country_info_screen.dart';

final class _KeyValueItem extends StatelessWidget {
  const _KeyValueItem({
    required this.keyText,
    required this.valueText,
  });

  final String keyText;
  final String valueText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: keyText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: valueText,
          ),
        ],
      ),
    );
  }
}

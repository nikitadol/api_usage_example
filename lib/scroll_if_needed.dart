import 'package:flutter/widgets.dart';

class ScrollIfNeeded extends StatelessWidget {
  const ScrollIfNeeded({
    super.key,
    this.primary,
    this.controller,
    required this.child,
  });

  final bool? primary;
  final ScrollController? controller;
  final Widget child;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          controller: controller,
          primary: primary,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: child,
            ),
          ),
        ),
      );
}

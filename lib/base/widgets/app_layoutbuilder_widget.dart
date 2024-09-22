import 'package:flutter/material.dart';

class AppLayoutBuilderWidegt extends StatelessWidget {
  final int randomDivider;
  const AppLayoutBuilderWidegt({super.key, required this.randomDivider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // print("${constraints.constrainWidth()}");
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => const SizedBox(
                  width: 3,
                  height: 1,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                )),
      );
    });
  }
}

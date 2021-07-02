import 'package:flutter/material.dart';

import 'dot_decorator.dart';

class DotIndicator extends StatelessWidget {
  final int dotsCount;
  final int position;
  final DotDecorator decorator;
  final Axis axis;
  final bool reversed;

  const DotIndicator({
    Key? key,
    required this.dotsCount,
    this.position = 0,
    this.decorator = const DotDecorator(),
    this.axis = Axis.horizontal,
    this.reversed = false,
  })  : assert(dotsCount != null && dotsCount > 0),
        assert(position != null && position >= 0),
        assert(decorator != null),
        assert(
          position < dotsCount,
          "Position must be inferior than dotsCount",
        ),
        super(key: key);

  Widget _buildDot(int index) {
    final isCurrent = index == position;
    final size = isCurrent ? decorator.activeSize : decorator.size;

    return Container(
      width: size.width,
      height: size.height,
      margin: decorator.spacing,
      decoration: ShapeDecoration(
        color: isCurrent ? decorator.activeColor : decorator.color,
        shape: isCurrent ? decorator.activeShape : decorator.shape,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dotsList = List<Widget>.generate(dotsCount, _buildDot);

    if (axis == Axis.vertical) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: reversed == true ? dotsList.reversed.toList() : dotsList,
      );
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: reversed == true ? dotsList.reversed.toList() : dotsList,
    );
  }
}

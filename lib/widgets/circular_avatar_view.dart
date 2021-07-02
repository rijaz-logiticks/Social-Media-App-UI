import 'package:flutter/material.dart';

class CircularAvatarView extends StatelessWidget {
  final String image;
  final int radius;
  final Function onTap;
  final bool showShadow;
  CircularAvatarView(
      {required this.image,
      required this.radius,
      required this.onTap,
      this.showShadow = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: radius * 2.toDouble(),
      width: radius * 2.toDouble(),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.toDouble()),
        // border: Border.all(),
      ),
      child: Image.network(
        image,
        fit: BoxFit.fill,
        errorBuilder: (context, child, loadingProgress) => Icon(Icons.person),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CircularGradientButton extends StatelessWidget {
  final IconData icon;
  final int radius;
  final Function onTap;

  CircularGradientButton(
      {required this.icon, required this.radius, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: radius * 2.toDouble(),
      width: radius * 2.toDouble(),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius.toDouble()),
          border: Border.all(color: Colors.white),
          color: Theme.of(context).primaryColor
          ),
      child: Icon(icon),
    );
  }
}

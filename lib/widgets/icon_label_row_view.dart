import 'package:flutter/material.dart';

class IconLabelRowView extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget? trailingWidget;
  IconLabelRowView(
      {required this.icon, required this.label, this.trailingWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(
            width: 8,
          ),
          Text(
            label,
            maxLines: 1,
          ),
          Spacer(),
          trailingWidget != null ? trailingWidget! : Container()
        ],
      ),
    );
  }
}

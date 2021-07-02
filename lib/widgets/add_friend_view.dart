import 'package:flutter/material.dart';

import 'circular_avatar_view.dart';
import 'circular_gradient_button.dart';

class AddFriendView extends StatelessWidget {
  final String image;
  final Function? onTap;
  AddFriendView({required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircularAvatarView(
              image: '',
              onTap: () {},
              radius: 28,
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
        CircleAvatar(
          child: Icon(Icons.add),
          radius: 12,
          backgroundColor: Theme.of(context).primaryColor,
        )
       
      ],
    );
  }
}

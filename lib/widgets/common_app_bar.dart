import 'package:flutter/material.dart';

import 'circular_avatar_view.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Social Media App',
              style: TextStyle(fontSize: 18),
            ),
            CircularAvatarView(
              image: 'https://berkowitzphotography.com/wp-content/uploads/2020/05/Male-Modeling.jpg',
              radius: 25,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 65);
}

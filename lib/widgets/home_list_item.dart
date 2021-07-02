import 'package:flutter/material.dart';
import 'package:social_media_app_ui/models/user.dart';
import 'package:social_media_app_ui/widgets/user_description_view.dart';

import 'add_friend_view.dart';
import 'image_carousel_view.dart';

class HomeListItem extends StatelessWidget {
  final User user;
  HomeListItem({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    Widget addFriendView = Padding(
      padding: const EdgeInsets.only(bottom: 18.0, right: 13),
      child: AddFriendView(image: user.profileImage),
    );

    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
        ImageCarouselView(
          images: user.images,
        ),
        addFriendView,
          ],
        ),
        UserDescriptionView(
          user: user,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_app_ui/models/user.dart';

import 'icon_label_row_view.dart';

class UserDescriptionView extends StatelessWidget {
  final User user;

  UserDescriptionView({required this.user});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                        text: user.name,
                        style: DefaultTextStyle.of(context)
                            .style
                            .copyWith(color: Colors.black, fontSize: 18),
                        children: [
                          TextSpan(
                            children: [
                              TextSpan(
                                text: user.age.toString(),
                                // style: profileAgeStyle,
                              )
                            ],
                            text: ', ',
                          ),
                        ])),
              ),
              Text(
                user.mutualFriends.toString() + ' ' + 'Mutual Friends',
                maxLines: 1,
                // style: profileFriendsStyle,
              ),
            ],
          ),
          IconLabelRowView(icon: Icons.home, label: user.place),
          IconLabelRowView(
              icon: Icons.location_on, label: user.distance + ' ' + 'Kms away')
        ],
      ),
    );
  }
}

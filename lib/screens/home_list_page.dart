import 'package:flutter/material.dart';
import 'package:social_media_app_ui/models/user.dart';
import 'package:social_media_app_ui/widgets/home_list_item.dart';

class ProfileCommunityListPage extends StatefulWidget {
  @override
  _ProfileCommunityListPageState createState() =>
      _ProfileCommunityListPageState();
}

class _ProfileCommunityListPageState extends State<ProfileCommunityListPage> {
  List<HomeListItem> userListItems = [];

  @override
  void initState() {
    super.initState();

    User.profiles.forEach((element) {
      userListItems.add(HomeListItem(
        user: element,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: userListItems,
      ),
    );
  }
}

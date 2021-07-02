import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app_ui/screens/chat_list_page.dart';
import 'package:social_media_app_ui/screens/home_list_page.dart';
import 'package:social_media_app_ui/widgets/circular_avatar_view.dart';
import 'package:social_media_app_ui/widgets/common_app_bar.dart';

class HomePage extends StatefulWidget {
  static const tag = 'home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _tabViews = [
    ProfileCommunityListPage(),
    ChatListPage(),
  ];

  final List<BottomNavigationBarItem> _navBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
  ];
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      body: _tabViews[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _navBarItems,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

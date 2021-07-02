import 'package:flutter/material.dart';
import 'package:social_media_app_ui/models/chat_item.dart';
import 'package:social_media_app_ui/widgets/chat_list_item.dart';

class ChatListPage extends StatefulWidget {
  @override
  _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
      itemCount: ChatItem.messages.length,
      itemBuilder: (context, index) {
        return ChatListItemView(
          chatListItem: ChatItem.messages[index],
          onTap: () {},
        );
      },
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_app_ui/models/chat_item.dart';

import 'circular_avatar_view.dart';

class ChatListItemView extends StatelessWidget {
  final Function onTap;
  final ChatItem chatListItem;

  ChatListItemView({required this.onTap,required this.chatListItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              children: [
                CircularAvatarView(
                    image: chatListItem.image,
                    radius: 22,
                    showShadow: true,
                    onTap: () {}),
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chatListItem.name,
                          style: DefaultTextStyle.of(context)
                              .style
                              .copyWith(fontSize: 16),
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          chatListItem.lastMsg,
                          style: DefaultTextStyle.of(context)
                              .style
                              .copyWith(fontSize: 16),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      chatListItem.time,
                      // style: chatListItem.isUnread
                      //     ? chatListTimeStyle
                      //     : chatListTimeStyle.copyWith(
                      //         color: categoryFilterDisabledColor),
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    chatListItem.isUnread
                        ? Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.pink),
                            child: Center(
                              child: Text(
                                chatListItem.numberOfUnreadMsg,
                                textAlign: TextAlign.center,
                                style: DefaultTextStyle.of(context)
                                    .style
                                    .copyWith(fontSize: 16)
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          )
                        : Container(
                            color: Colors.transparent,
                            height: 18,
                            width: 18,
                          )
                  ],
                ),
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}

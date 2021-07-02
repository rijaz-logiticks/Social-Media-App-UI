import 'dart:convert';

class ChatItem {
  String name;
  String lastMsg;
  String image;
  String time;
  String numberOfUnreadMsg;
  bool isUnread;

  ChatItem({
    required this.image,
    required this.name,
    required this.lastMsg,
    required this.time,
    required this.numberOfUnreadMsg,
    required this.isUnread,
  });

  static List<ChatItem> messages = [
    ChatItem(
        image: 'https://assets.vogue.com/photos/5876fe0a8a28e998768824d3/4:3/w_795,h_597,c_limit/david-gandy.jpg',
        name: 'John doe',
        lastMsg: 'Where were you',
        time: '12.30 am',
        numberOfUnreadMsg: '2',
        isUnread: true),
    ChatItem(
        image: '',
        name: 'Elizabeth',
        lastMsg: 'Call me plz',
        time: '4.00 am',
        numberOfUnreadMsg: '5',
        isUnread: true),
    ChatItem(
        image: 'https://thatsisterimages.s3.amazonaws.com/wp-content/uploads/2020/11/17182450/Terrence-Telle.jpg',
        name: 'Mathew terry',
        lastMsg: 'Congrats',
        time: '10.00 am',
        numberOfUnreadMsg: '',
        isUnread: false),
    ChatItem(
        image: '',
        name: 'Joey james',
        lastMsg: 'Okay',
        time: '22-Jun-21',
        numberOfUnreadMsg: '',
        isUnread: false),
  ];
}

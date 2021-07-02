import 'dart:convert';

class User {
  String name;
  String id;
  int age;
  String place;
  int mutualFriends;
  String distance;
  List<String> images;
  String profileImage;
  String about;
  String interests;
  bool isAccepted;

  User(
      {required this.name,
      required this.id,
      required this.age,
      required this.place,
      required this.mutualFriends,
      required this.distance,
      required this.images,
      required this.profileImage,
      required this.about,
      required this.interests,
      required this.isAccepted});

  static List<User> profiles = [
    User(
      id: 'id',
      isAccepted: false,
      name: "John krasinski",
      age: 25,
      place: "Texas",
      mutualFriends: 7,
      distance: "8",
      images: [
        "https://manofmany.com/wp-content/uploads/2019/04/David-Gandy.jpg",
        "https://assets.vogue.com/photos/5876fe0a8a28e998768824d3/4:3/w_795,h_597,c_limit/david-gandy.jpg"
      ],
      profileImage: "",
      about: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
      interests: "driving, solo rider",
    ),
    User(
      id: 'id',
      isAccepted: false,
      name: "Michael clarke",
      age: 25,
      place: "Los Angeles",
      mutualFriends: 8,
      distance: "10",
      images: [
        "https://www.thebalanceeveryday.com/thmb/FkQ7RaPHL1yI0uCqkgDR9IWHoBc=/1887x1415/smart/filters:no_upscale()/GettyImages-487149250-58c71e5b3df78c353c0577eb.jpg",
        "https://berkowitzphotography.com/wp-content/uploads/2020/05/Male-Modeling.jpg"
      ],
      profileImage: "",
      about: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
      interests: "Music, base ball",
    ),
    User(
      id: 'id',
      isAccepted: false,
      name: "Desmund john",
      age: 23,
      place: "Missouri",
      mutualFriends: 12,
      distance: "4",
      images: [
        "https://thatsisterimages.s3.amazonaws.com/wp-content/uploads/2020/11/17182450/Terrence-Telle.jpg",
        "https://m.media-amazon.com/images/M/MV5BZWJiZGIwNzgtMjdlZi00MTQ4LWFhMzYtMjNkNjhkNDlmNDJiXkEyXkFqcGdeQXVyNzE2NDIwOTY@._V1_FMjpg_UX1000_.jpg"
      ],
      profileImage: "",
      about: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
      interests: "english literature",
    )
  ];
}

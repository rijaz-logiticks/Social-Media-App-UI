import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'dot_indicator/dot_decorator.dart';
import 'dot_indicator/dot_indicator.dart';

class ImageCarouselView extends StatefulWidget {
  final List<String> images;

  ImageCarouselView({required this.images});

  @override
  _ImageCarouselViewState createState() => _ImageCarouselViewState();
}

class _ImageCarouselViewState extends State<ImageCarouselView> {
  int currentPosition = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 300,
          child: PageView(
            children: widget.images
                .map((imageUrl) => CachedNetworkImage(
                      imageUrl: imageUrl,
                      placeholder: (context, url) => Container(),
                      fit: BoxFit.cover,
                    ))
                .toList(),
            onPageChanged: (index) {
              setState(() {
                currentPosition = index;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: DotIndicator(
            dotsCount: 2,
            position: currentPosition,
            decorator: DotDecorator(
                activeColor: Theme.of(context).primaryColor,
                size: Size.square(8),
                activeSize: Size.square(8)),
          ),
        )
      ],
    );
  }
}

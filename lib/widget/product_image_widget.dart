import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: 300,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      indicatorBackgroundColor: Colors.white,
      indicatorColor: Colors.redAccent,
      children: [
        Padding(padding: EdgeInsets.all(8),
        child: Image.asset("images/p1.png"),),

        Padding(padding: EdgeInsets.all(8),
          child: Image.asset("images/p2.png"),),




      ],
    );
  }
}

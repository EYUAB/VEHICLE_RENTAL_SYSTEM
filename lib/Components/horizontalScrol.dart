import 'package:flutter/material.dart';

class HorizontalScroll extends StatelessWidget {
  const HorizontalScroll({super.key}
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Catagory('Images/car1.png', 'Image'),
          Catagory('Images/car1.png', 'Image'),
          Catagory('Images/car1.png', 'Images'),
          Catagory('Images/car1.png', 'Images'),
          Catagory('Images/car1.png', 'Images'),
        ],
      ),
    );
  }
}
class Catagory extends StatelessWidget {
  String imagePath;
  String imageCaption;
  Catagory(
this.imagePath,
this.imageCaption,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: ListTile(
        title: Image.asset(imagePath),
        subtitle: Text(imageCaption),
      ),
    );
  }
}
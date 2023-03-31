import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
    height: 200,
    child: Carousel(
      dotColor: Colors.black,
      dotIncreasedColor: Colors.black,
      boxFit:  BoxFit.cover,
      autoplay: true,
      indicatorBgPadding: 4,
      dotBgColor: Colors.transparent,
       images: const [
       AssetImage('Images/bus.png'),
       AssetImage('Images/car1.png'),
       AssetImage('Images/car2.png'),
       AssetImage('Images/car3.png'),
       AssetImage('Images/car4.png'),
      ],
    ),
  );
  }
}
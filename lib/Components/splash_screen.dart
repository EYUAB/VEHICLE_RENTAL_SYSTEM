import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:vehicle_rental_system/Components/logIn.dart';


class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            SizedBox(
              width: size.width,
              height:size.height,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: AnimatedSplashScreen(
                  animationDuration: Duration(seconds: 2),
                  splashIconSize: 400,
                  splashTransition: SplashTransition.scaleTransition,
                  splash: Column(
                  children: [
                    TypewriterAnimatedTextKit(
                  text: [
                    'Vehicle Rental'
                  ],
                  speed: Duration(milliseconds: 200),
                  textStyle: TextStyle( fontSize: 45.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w900,),
                     ),
                     Container(
                     width: 250,
                     height: 250,
                      child: Image.asset('Images/car_logo.png',),
                      
                      ),
                  ],
                )
                
                , nextScreen: LogIn()),
              ),
            ),
        ],
      ),
    );
  }
}
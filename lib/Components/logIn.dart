import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Vehicle Rental System'),
            actions: [
              IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.white,),),
            ],
          ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 50),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 60,
                child: Image.asset('Images/car_logo.png'),),
                SizedBox(height: 20,),
              TypewriterAnimatedTextKit(
              text: [
                'Vehicle Rental'
              ],
              speed: Duration(milliseconds: 200),
              textStyle: TextStyle( fontSize: 45.0,
              color: Colors.black,
              fontWeight: FontWeight.w900,),
                 ),
            ],
          ),
        ),
      ),
    );
  }
}
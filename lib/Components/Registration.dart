import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:vehicle_rental_system/Components/logIn.dart';

import 'buttons.dart';
import 'constants.dart';
import 'home_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  SizedBox(
                height: 48.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  //Do something with the user input.
                  
                },
                decoration: Constants.kInputDecoration.copyWith(hintText: 'Enter your full_name'),
              ),
              SizedBox(height: 8,),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  //Do something with the user input.
                  
                },
                decoration: Constants.kInputDecoration.copyWith(hintText: 'Enter your phone number'),
              ),
              SizedBox(height: 8,),
               TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  //Do something with the user input.
                  
                },
                decoration: Constants.kInputDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(height: 8,),
                TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  //Do something with the user input.
                  
                },
                decoration: Constants.kInputDecoration.copyWith(hintText: 'Enter your password'),
              ),
              SizedBox(height: 24,),
              Buttons(buttonType: 'Register', onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }, color: Colors.blueAccent),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Do you have an account?',style: TextStyle(color: Colors.black45,fontSize: 15),),
                  MaterialButton(onPressed: (){},
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                    },
                    child: Text('Sign In',style: TextStyle(color: Colors.blueAccent,fontSize: 15),)),)
                ],
              ),
            ],
          ),
        ),
    );
  }
}
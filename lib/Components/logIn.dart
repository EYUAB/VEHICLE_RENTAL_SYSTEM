import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_rental_system/Components/Registration.dart';
import 'package:vehicle_rental_system/Components/buttons.dart';
import 'package:vehicle_rental_system/Components/constants.dart';
import 'package:vehicle_rental_system/Components/home_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 60,
                  child: Hero(
                    tag: Text('hero'),
                    child: Image.asset('Images/car_logo.png')),),
                  SizedBox(height: 20,),
                TypewriterAnimatedTextKit(
                text: [
                  'Vehicle Rental'
                ],
                speed: Duration(milliseconds: 200),
                textStyle: TextStyle( fontSize: 45.0,
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w900,),
                   ),
                    SizedBox(
                  height: 48.0,
                ),
                 TextFormField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    //Do something with the user input.
                    
                  },
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'^[A-Z a-z]+$').hasMatch(value!)) {
                      return 'Enter correct name';

                    }
                    else return null;
                  },
                  decoration: Constants.kInputDecoration.copyWith(hintText: 'Enter your email'),
                ),
                SizedBox(height: 15,),
                  TextFormField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (value) {
                    //Do something with the user input.
                    
                  },
                   validator: (value){
                    if(value!.isEmpty) {
                      return 'Enter correct password';

                    }
                    if(value.length<6 && value.length>0){
                      return 'the password must be greater 5';
                    }
                    else return null;
                  },
                  decoration: Constants.kInputDecoration.copyWith(hintText: 'Enter your password'),
                ),
                SizedBox(height: 24,),
                Buttons(buttonType: 'Log in', onPressed: (){
                  if(_formKey.currentState!.validate()){
                    final snackBar=SnackBar(content: Text('Authenticating'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));  
                  }               
                }, color: Colors.lightBlueAccent),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Don\'t have account?',style: TextStyle(color: Colors.black45,fontSize: 15),),
                    
                    
                    MaterialButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
                    },
                    child: Text('Create New Account',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 15),),)
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.black45,
                    ),
                  ),
                  Text('Or sign in with google',style: TextStyle(color: Colors.black45,fontSize: 15),),
                  Expanded(
                    child: Divider(
                      color: Colors.black45,
                    ),
                  ),
                ],
                ),
                SizedBox(height: 30,),
              
                InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(32),
                       border: Border.all(
                        color: Colors.lightBlueAccent,
                       )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                           Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Image.asset('Images/google.png',width: 40,height: 40,)),
                           Text('sign in with google',style: TextStyle(color: Colors.black45,fontSize: 18),),
                           
                     ],
                     ),
                    ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
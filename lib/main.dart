
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_rental_system/Components/splash_screen.dart';

void main(List<String> args) async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreenWidget(),
  ),
  );
}

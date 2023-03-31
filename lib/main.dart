
import 'package:flutter/material.dart';
import 'package:vehicle_rental_system/Components/logIn.dart';

void main(List<String> args) {
   WidgetsFlutterBinding.ensureInitialized();
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LogIn(),
  ),
  );
}

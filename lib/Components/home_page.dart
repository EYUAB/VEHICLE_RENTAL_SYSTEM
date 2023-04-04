import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_rental_system/Components/carousel.dart';
import 'package:vehicle_rental_system/Components/horizontalScrol.dart';
import 'package:vehicle_rental_system/Components/logIn.dart';
import 'package:vehicle_rental_system/Components/vehicle_lists.dart';
import 'package:firebase_auth/firebase_auth.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Vehicle Rental System'),
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.white,),),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text('Jermi'), accountEmail: Text('Jermi01@gmail.com'),
              currentAccountPicture: GestureDetector(child: 
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              ),
              ),
              InkWell(
                onTap: () async{
                  await _auth.signOut();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                },
                child: ListTile(
                leading: Icon(Icons.close,color: Colors.lightBlueAccent,),
                title: Text('Sign out',style: TextStyle(color: Colors.black45),),
                ),
              ),
               InkWell(
                onTap: () {},
                child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
                ),
              ),
               InkWell(
                onTap: () {},
                child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
                ),
              ),
               InkWell(
                onTap: () {},
                child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
                ),
              ),
               InkWell(
                onTap: () {},
                child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
                ),
              ),
              Divider(
                thickness: 0.5,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                leading: Icon(Icons.settings,color: Colors.blue,),
                title: Text('setting'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                leading: Icon(Icons.help,color: Colors.amber,),
                title: Text('about'),
                ),
              ),
              
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              // horizontal slider
              CarouselWidget(),
              const Padding(padding: EdgeInsets.all(8),
              child: Text('Catagory'),
              ),
              Padding(padding: EdgeInsets.all(8),
              // horizontal scroll view 
              child: HorizontalScroll(),
              ),
              const Padding(padding: EdgeInsets.all(8),
              child: Text('Available Vehicles'),
              ),
                 Container(
                  height: 400,
                   child: Padding(padding: EdgeInsets.all(8),
                               child: AvailableVehicleLists(),
                               ),
                 ),
            ],
          ),
        ),
    );
  }
}
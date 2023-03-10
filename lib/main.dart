import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_rental_system/Components/horizontalScrol.dart';

import 'Components/vehicle_lists.dart';
void main(List<String> args) {
  runApp(HomePage());
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget carousel_image=  Container(
    height: 200,
    child: Carousel(
      boxFit:  BoxFit.cover,
      autoplay: true,
      indicatorBgPadding: 4,
       images: const [
       AssetImage('Images/bus.png'),
       AssetImage('Images/car1.png'),
       AssetImage('Images/car2.png'),
       AssetImage('Images/car3.png'),
       AssetImage('Images/car4.png'),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              carousel_image,
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
        ),
    );
  }
}
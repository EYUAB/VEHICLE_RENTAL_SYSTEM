import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AvailableVehicleLists extends StatefulWidget {
  const AvailableVehicleLists({super.key});

  @override
  State<AvailableVehicleLists> createState() => _AvailableVehicleListsState();
}

class _AvailableVehicleListsState extends State<AvailableVehicleLists> {
  var availableVehiclesList=[
    {
      "name": "BMW",
      "picture":"Images/car2.png",
      "currency": "birr/month",
      "price":100000,
    },
       {
      "name": "BMW",
      "picture":"Images/car3.png",
      "currency": "birr/month",
      "price":100000,
    },
       {
      "name": "BMW",
      "picture":"Images/car4.png",
      "currency": "birr/month",
      "price":100000,
    },
       {
      "name": "BMW",
      "picture":"Images/car1.png",
      "currency": "birr/month",
      "price":100000,
    },
       {
      "name": "BMW",
      "picture":"Images/bus.png",
      "currency": "birr/month",
      "price":100000,
    },
       {
      "name": "BMW",
      "picture":"Images/car4.png",
      "currency": "birr/month",
      "price":100000,
    },
       {
      "name": "BMW",
      "picture":"Images/car3.png",
      "currency": "birr/month",
      "price":100000,
    },
       {
      "name": "BMW",
      "picture":"Images/car1.png",
      "currency": "birr/month",
      "price":100000,
    },
    {
      "name": "BMW",
      "picture":"Images/car1.png",
      "currency": "birr/month",
      "price":100000,
    },
    {
      "name": "BMW",
      "picture":"Images/car1.png",
      "currency": "birr/month",
      "price":100000,
    },
    {
      "name": "BMW",
      "picture":"Images/car1.png",
      "currency": "birr/month",
      "price":100000,
    },
    {
      "name": "BMW",
      "picture":"Images/car1.png",
      "currency": "birr/month",
      "price":100000,
    },
    {
      "name": "BMW",
      "picture":"Images/car1.png",
      "currency": "birr/month",
      "price":100000,
    },
    {
      "name": "BMW",
      "picture":"Images/car1.png",
      "currency": "birr/month",
      "price":100000,
    },
    {
      "name": "BMW",
      "picture":"Images/car1.png",
      "currency": "birr/month",
      "price":100000,
    },
    {
      "name": "BMW",
      "picture":"Images/car1.png",
      "currency": "birr/month",
      "price":100000,
    },
    
  ]; 
  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
    itemCount: availableVehiclesList.length,
    itemBuilder:(BuildContext context,int index){
      return SingleVehicle(
        vehicleName: availableVehiclesList[index] ['name'],
        vehiclePicture: availableVehiclesList[index] ['picture'],
        vehiclePrice: availableVehiclesList[index] ['price'] ,
        vehicleCurrency: availableVehiclesList[index] ['currency'],
      );
    }
    );
  }
}
class SingleVehicle extends StatelessWidget {
  final vehicleName;
  final vehiclePicture;
  final vehiclePrice;
  final vehicleCurrency;
const SingleVehicle({super.key, 
this.vehicleName,
this.vehiclePicture,
this.vehiclePrice,
this.vehicleCurrency,
}
);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(tag: vehicleName, child: Material(
  child: InkWell(
    onTap: (){},
    child: GridTile(
      footer: Container(
        color: Colors.white70,
        child: ListTile(
          leading: Text(vehicleName,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
          title: Text("$vehiclePrice",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
          subtitle: Text(vehicleCurrency,style: TextStyle(fontSize: 14,
          fontWeight: FontWeight.bold,color: Colors.black,
          ),
          ),
        ),
      ) ,
      child: Image.asset(vehiclePicture,fit: BoxFit.cover,),
      ),
  ),
        ),
        ),
      ),
        );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'screen2.dart';
class screen3 extends StatelessWidget {

   String? name;
  DateTime today =DateTime.now();
   screen3({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child:Scaffold(
          body: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text("Hi! $name",
                style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Image(image: AssetImage('images/certificate.png')),
              SizedBox(
                height: 20,
              ),
              Padding(padding: const EdgeInsets.all(10.0),
              child: Container( height: 50,
              child: 
              Text("You have Successfully completed Hybrid Mobile app development Course",style: 
              TextStyle(fontWeight: FontWeight.bold,fontSize: 30,
              ),
              ),
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(padding: const EdgeInsets.all(5.0),
              child: 
              Align(alignment: Alignment.centerLeft,child: Text("INSTRUCTOR NAME",style: 
              TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
              ),
              ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align (alignment: Alignment.centerLeft, child: 
                Text("Pankaj Kapoor",style: TextStyle(color: Colors.blueGrey,fontSize :14,)))
              ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: Align(alignment: Alignment.bottomRight,child: Text("$today"),),)

            ],
          ),
        ));
  }
}
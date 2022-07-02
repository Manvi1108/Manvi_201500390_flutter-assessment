// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen2.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text("TRAINING",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
            backgroundColor: Colors.white,
            centerTitle: true,),
          body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
            [
              Image(
                  image: AssetImage('images/training.png'),
                  height: 200,
                  width: 150,
                  ),
                SizedBox(
                  width: 200,
                  height: 50,
                ),
              ElevatedButton(
                onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return screen2();
                }));
                },
                child: const Text("Get Started" ),
              ),
            ]
          ))
        ),
      ),
    );
    
  }
}

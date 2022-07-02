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
      home: Scaffold(
        appBar: AppBar(
          title: Text("TRAINING",style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Color.fromARGB(212, 40, 130, 195)),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Image(
                image: AssetImage('images/training'),
                ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Get Started" , style: TextStyle(color: Colors.blue)),
            ),
          ]
        ))
      ),
    );
    
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_asessment/screen3.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  String? _nameError = null;
  String? _emailError = null;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Login",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 45)),
            SizedBox(
              height: 60,
            ),
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                errorText: _nameError,
                icon: Icon(Icons.person,color: Colors.black,size: 35,),
                hintText: "Student Name",
                labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                border: UnderlineInputBorder(),
              ),
              keyboardType: TextInputType.name,
            ),
              SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                errorText: _emailError,
                icon: Icon(Icons.mail,color: Colors.black,),
                hintText: "Email ID",
                labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                border: UnderlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox( height: 50,),
            Center(
          child: Container(
            
            child: SizedBox(
              width: 320,
              height: 50,
              child:  ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  primary: const Color.fromARGB(255, 102, 40, 172),
                  fixedSize: const Size(200, 20),
                ),
                onPressed: () {
                  final name = namecontroller.text;
                  final email = emailcontroller.text;
                  if (name.isEmpty || email.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Failed"),
                          content: const Text("None of the field can be empty"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("OK"))
                          ],
                        );
                      },
                    );
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (conetext) {
                      return screen3(name:namecontroller.text);
                    }));
                  }
                },
                child: const Text('Login'),
              ),
            ),
          ),)

          ]))),
    );
    
  }
}
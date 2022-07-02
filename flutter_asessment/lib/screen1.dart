import 'package:flutter/material.dart';
import 'package:flutter_asessment/screen2.dart';


class screen1 extends StatelessWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen-1")),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text(
                "TRAINING",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.purple),
              ),
              SizedBox(
                height: 30,
              ),
              Image(
                image: NetworkImage(
                    'http://www.knacktraining.com/wp-content/uploads/2019/01/Illustration.png'),
                height: 200,
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return screen2();
                    }));
                  },
                  child: Text("Get Started",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
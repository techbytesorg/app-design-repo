import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(InterfaceApp());
}

class InterfaceApp extends StatelessWidget {
  final int _todayNum = 2;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Today is an interesting Day!"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Today's number is: $_todayNum",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigoAccent,
                ),
              ),
              Text("This is a second text in the same column!"),
              SizedBox(height: 30),
              Text("This is the third text in the same column!"),
              Icon(
                Icons.add_call,
                size: 50,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

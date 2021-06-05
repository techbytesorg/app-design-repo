import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'adder_view.dart';
import 'data.dart';

class BinaryAdderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: customBlue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "3-bit Binary Adder",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Press the 2 buttons to increase the 2 values, then press “+” to add them together!",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 10),
              AdderView(),
            ],
          ),
        ),
      ),
    );
  }
}

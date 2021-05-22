import 'package:binary_adder/adder_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BinaryAdderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Press the 2 buttons to increase the 2 values, then press “Add” to add them together!",
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

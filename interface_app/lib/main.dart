import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(InterfaceApp());
}

class InterfaceApp extends StatelessWidget {
  final List<String> _daysOfWeek = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  final int _todayIndex = 5;

  final List<String> _things = [
    "This is a second text in the same column!",
    "This is the third text in the same column!",
    "Hey I just called my friend",
    "Hey I'm like adding way too many text",
    "Hey this is yet another text",
    "Do this literALLY EVERY SINGLE TIME",
    "This is yet another text",
    "More text!!!!!!",
    "So much more text",
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Today is an interesting Day!"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "Today is: ${_daysOfWeek[_todayIndex]}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                Icon(
                  Icons.account_balance_wallet,
                  size: 50,
                  color: Colors.pink,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _things.length,
                  padding: const EdgeInsets.all(5.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      child: Row(
                        children: [
                          Text("${_things[index]}"),
                          Icon(
                            Icons.add_call,
                            size: 20,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

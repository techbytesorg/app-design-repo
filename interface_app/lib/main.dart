// the material package contains all the interface resources
import 'package:flutter/material.dart';

// just for some of the colo(u)rs that we're using
import 'package:flutter/painting.dart';

// main basically just runs the app
void main() =>
    runApp(InterfaceApp()); // creates our app as an object and runs it

// the class that constructs our app
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
    "This is some more text even wow so much text",
    "More text",
    "So much more text",
    "EHDUFGSDIJKFHSDJKFHSDAJKFDHF",
    "SKLFHDSJKFHSDJKLFH",
    "DKFJDKFJDKJ",
    "sjkdfhsdjfhdsjfhs",
    "dfkdjkfdkfdkfjdf",
    "dfkjdkfjdkjdfd",
    "dfkljdfksdjfksdjfs",
    "fkdklfkdlfkd",
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Today is an interesting Day!"),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: Text(
                "Today is: ${_daysOfWeek[_todayIndex]}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigoAccent,
                ),
              ),
            ),
            Icon(
              Icons.account_balance_wallet,
              size: 50,
              color: Colors.pink,
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              shrinkWrap: true,
              itemCount: _things.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  heightFactor: 2.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("${_things[index]}"),
                      SizedBox(width: 5),
                      Icon(
                        Icons.add_call,
                        size: 20,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// the material package contains all the interface resources
import 'package:flutter/material.dart';

// just for some of the colo(u)rs that we're using
import 'package:flutter/painting.dart';

import 'button_view.dart';

// This is where the main App is defined
// the class that constructs our app
class MainView extends StatelessWidget {
  final List<String> _daysOfWeek;
  final int _todayIndex;
  final List<String> _things;

  MainView(this._daysOfWeek, this._todayIndex, this._things);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
        ButtonView(),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
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
    );
  }
}

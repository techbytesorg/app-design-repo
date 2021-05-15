// How do states work in Flutter??
import 'package:flutter/material.dart';

class ButtonView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ButtonViewState();
  }
}

class _ButtonViewState extends State<ButtonView> {
  int _currNum = 0;

  void _incrementCurrNum() {
    setState(() {
      _currNum++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$_currNum is the current number",
          style: TextStyle(
            fontSize: 20,
            color: Colors.deepOrange,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          child: Text(
            "Tap me!",
            style: TextStyle(
              fontSize: 25,
              color: Colors.deepPurple,
            ),
          ),
          onPressed: _incrementCurrNum,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'another_view.dart';

class OtherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Look this is another view!"),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AnotherView("Hi this is a message")));
          },
          child: Text("Goto another view with navigation!"),
        ),
      ],
    );
  }
}

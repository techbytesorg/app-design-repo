import 'package:flutter/material.dart';

class AnotherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Having a scaffold here means that we automatically get a back button on the top
      appBar: AppBar(
        title: Text("This is another view!"),
      ),
      body: Column(
        children: [
          Text("Look this is another view!"),
          // We CAN add this as a second back button in addition to the one at the top
          // TextButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: Text("Go back to the original view with navigation!"),
          // ),
        ],
      ),
    );
  }
}

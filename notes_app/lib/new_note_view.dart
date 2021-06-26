import 'package:flutter/material.dart';

class NewNoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Note"),
      ),
      body: Column(
        children: [
          // TextField(
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: "New Note Name:",
          //   ),
          // ),
          Text("Hi"),
        ],
      ),
    );
  }
}

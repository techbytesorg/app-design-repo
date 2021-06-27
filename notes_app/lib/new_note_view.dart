import 'package:flutter/material.dart';
import 'data.dart';

class NewNoteView extends StatelessWidget {
  String _newNoteTitle = "";
  String _newNoteDesc = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Note"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              notes_storage.insert(0, Note(_newNoteTitle, _newNoteDesc, DateTime.now()));
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "New Note Name",
            ),
            onSubmitted: (String value)  {
              _newNoteTitle = value;
            },
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "New Note Description",
            ),
            onSubmitted: (String value) {
              _newNoteDesc = value;
            },
          ),
        ],
      ),
    );
  }
}

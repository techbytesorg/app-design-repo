import 'package:flutter/material.dart';
import 'data.dart';

class NoteDetailsView extends StatefulWidget {
  final int _noteIndex;

  NoteDetailsView(this._noteIndex);

  @override
  State<StatefulWidget> createState() {
    return _NoteDetailsViewState(_noteIndex);
  }
}

class _NoteDetailsViewState extends State<NoteDetailsView> {
  final int _noteIndex;

  _NoteDetailsViewState(this._noteIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${notes_storage[_noteIndex].title}"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Text("${notes_storage[_noteIndex].lastEdit.toString()}"),
          SizedBox(height: 10),
          TextFormField(
            readOnly: true,
            initialValue: notes_storage[_noteIndex].description,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Note description:",
            ),
          ),
        ],
      ),
    );
  }
}

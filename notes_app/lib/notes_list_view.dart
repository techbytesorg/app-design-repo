import 'package:flutter/material.dart';
import 'note_details_view.dart';
import 'new_note_view.dart';
import 'data.dart';

class NotesListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NotesListViewState();
  }
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewNoteView()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: notes_storage.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(
                "${notes_storage[index].title}",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("${notes_storage[index].lastEdit.toString()}"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NoteDetailsView(index)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
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
    return ListView.builder(
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
          ),
        );
      },
    );
  }
}

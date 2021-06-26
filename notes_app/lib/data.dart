// This file holds all the data needed by the notes app

// Class that defines an single note object
class Note {
  String title;
  String description;
  DateTime lastEdit;

  Note(this.title, this.description, this.lastEdit);
}

// List to hold all the Note objects
List<Note> notes_storage = [];

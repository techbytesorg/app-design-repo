import 'package:flutter/material.dart';
import 'notes_list_view.dart';
import 'settings_view.dart';

class MainTabControllerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            unselectedLabelColor: Colors.blue,
            labelColor: Colors.blueAccent,
            tabs: [
              Tab(icon: Icon(Icons.article)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
          body: TabBarView(
            children: [
              NotesListView(),
              SettingsView(),
            ],
          ),
        ),
      ),
    );
  }
}

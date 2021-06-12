// the material package contains all the interface resources
import 'package:flutter/material.dart';
import 'data.dart';
import 'main_view.dart';
import 'other_view.dart';

// This is where the main App is defined
// the class that constructs our app
class InterfaceAppTopTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("This is an interesting Tab Bar!"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.access_alarm)),
                Tab(icon: Icon(Icons.add_a_photo)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              MainView(daysOfWeek, todayIndex, things),
              OtherView(),
            ],
          ),
        ),
      ),
    );
  }
}

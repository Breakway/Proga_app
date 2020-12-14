import 'package:fitness_app/pages/Profile.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/pages/Homepage.dart';
import 'package:fitness_app/pages/Diets.dart';
import 'package:fitness_app/pages/Statistics.dart';
import 'package:fitness_app/pages/Profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(
          children: <Widget>[
            Homepage(),
            Diets(),
            Statistics(),
            Profile(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(FontAwesomeIcons.solidHeart, size: 25.0),
            ),
            Tab(
              icon: Icon(Icons.restaurant_menu, size: 25.0),
            ),
            Tab(
              icon: Icon(Icons.insert_chart, size: 25.0),
            ),
            Tab(
              icon: Icon(FontAwesomeIcons.user, size: 25.0)
            )
          ],
          labelPadding: EdgeInsets.all(5.0),
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.black12,
          indicatorWeight: 0.01,
        ),
      ),
    );
  }
}
import 'package:fitness_app/clippers/appbarclipper.dart';
import 'package:fitness_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: AppBarClipper(),
            child: Container(
              decoration: BoxDecoration(
                color: appBarUnderneath,
              ),
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                      FontAwesomeIcons.filter,
                      size: 13,
                      color: Colors.white,
                    ),
                    onPressed: null,
                  )
                ],
              ),
              height: 60,
            ),
          )
        ],
      ),
    );
  }
}
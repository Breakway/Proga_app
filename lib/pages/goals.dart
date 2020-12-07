import 'package:fitness_app/clippers/appbarclipper.dart';
import 'package:fitness_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompletedGoals extends StatelessWidget {
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
              height: MediaQuery.of(context).size.height * 0.3,
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
                        'My completed goals',
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90.0, left: 28, right: 28),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  GoalCard(
                    eventName: "Leave the town without transport",
                    date: "29/10",
                    difficulty: "5/10",
                    reward: "Burger",
                    imageUrl:
                    "https://img4.goodfon.ru/wallpaper/nbig/2/cc/kedy-rozovye-obuv-mat-i-machekha-trava-leto.jpg",
                  ),
                  GoalCard(
                    eventName: "Cross 20Km distance by bicycle",
                    date: "5/11",
                    difficulty: "3/10",
                    reward: "Pizza",
                    imageUrl:
                    "https://99px.ru/sstorage/56/2020/02/mid_331957_464769.jpg",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GoalCard extends StatelessWidget {
  final String eventName;
  final String date;
  final String difficulty;
  final String reward;
  final String imageUrl;

  const GoalCard ({
    @required this.eventName,
    @required this.date,
    @required this.difficulty,
    @required this.reward,
    @required this.imageUrl,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300],
                spreadRadius: 1,
                blurRadius: 15,
              ),
            ],
            borderRadius: BorderRadius.circular(6)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              imageUrl,
              fit: BoxFit.fitWidth,
              height: 150,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    eventName,
                    style: Theme.of(context).textTheme.body2.copyWith(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.calendar,
                            color: brandDark,
                            size: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                date.toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Date',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Montserrat",
                                  fontSize: 11,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.handPointRight,
                            color: brandDark,
                            size: 10,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                difficulty.toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'difficulty',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Montserrat",
                                  fontSize: 11,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.gifts,
                                color: brandDark,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    reward.toString(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Montserrat",
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'Reward',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Montserrat",
                                      fontSize: 11,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 1,
                          ),
                            ],
                          )
                        ],
                      ),
                ],
              ),
                  )
          ],
        ),
      ),
    );
  }
}
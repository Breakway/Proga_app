import 'package:fitness_app/clippers/appbarclipper.dart';
import 'package:fitness_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Diets extends StatelessWidget {
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
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My Diets',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
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
                  DietCard(
                    description: "Shrimp salad with vegetables and greens ",
                    name: "Breakfast",
                    caloriesNum: 83,
                    time: 10,
                    imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLKOpJYeb8JheH6NReCRZzM0l7J8RTSK2WcA&usqp=CAU",
                  ),
                  DietCard(
                    description: "Chicken steak and vegetables",
                    name: "Lunch",
                    caloriesNum: 177,
                    time: 20,
                    imageUrl:
                    "https://www.photorecept.ru/wp-content/uploads/2017/10/9-6-e1586102392878-1300x832.jpg",
                  ),
                  DietCard(
                    description: "Pasta and salad",
                    name: "Dinner",
                    caloriesNum: 226,
                    time: 25,
                    imageUrl:
                    "https://i.pinimg.com/originals/bc/e0/04/bce004a0d0f8e33b66f2385fe1d18639.jpg",
                  ),
                  DietCard(
                    description: "Fruit dessert",
                    name: "Snacks",
                    caloriesNum: 82,
                    time: 25,
                    imageUrl:
                    "https://www.gastronom.ru/binfiles/images/20190307/b6b21d27.jpg",
                  ),
                  DietCard(
                    description: "Berry cocktail",
                    name: "Drinks",
                    caloriesNum: 71,
                    time: 10,
                    imageUrl:
                    "https://i.ytimg.com/vi/IG7P_EsSLgI/maxresdefault.jpg",
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DietCard extends StatelessWidget {
  final String name;
  final String description;
  final int caloriesNum;
  final int time;
  final String imageUrl;

  const DietCard({
    @required this.name,
    @required this.description,
    @required this.caloriesNum,
    @required this.time,
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
                      name,
                      style: Theme
                          .of(context)
                          .textTheme
                          .body2
                          .copyWith(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.fire,
                              color: brandDark,
                              size: 10,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  caloriesNum.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Number of calories',
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
                          width: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.timer,
                              color: brandDark,
                              size: 13,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  time.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Cooking time (min)',
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
                          width: 0,
                        ),
                      ],
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}


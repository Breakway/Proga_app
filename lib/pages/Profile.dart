import 'package:fitness_app/pages/authentication_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fitness_app/clippers/appbarclipper.dart';
import 'package:fitness_app/constants/colors.dart';

class Profile extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                        'My Profile',
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
            padding: const EdgeInsets.fromLTRB(55, 370, 55, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '   example@mail.com',
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(55, 430, 55, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '  Repeat Password',
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(55, 480, 55, 0),
              child: RaisedButton(
                onPressed: () {
                  context.read<AuthenticationService>().signIn(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      );
                },
                child: Text("Sign in"),
              )),
        ],
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:myloginlogout/main.dart';
import 'package:myloginlogout/widgets/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'User.dart';

class AfterLoginGoToThis extends StatefulWidget {
  const AfterLoginGoToThis({super.key});

  @override
  State<AfterLoginGoToThis> createState() => _AfterLoginGoToThisState();
}

class _AfterLoginGoToThisState extends State<AfterLoginGoToThis> {
  late SharedPreferences prefs;
  User? user = null;

  @override
  void initState() {
    super.initState();
    UserInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: PageColors(context),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: SizedBox(
                  height: 35,
                  child: Text(
                    "Username : ${user!.username}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
                child: Text(
                  "Email : ${user!.email}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  onPressed: logOutOfPg)
            ],
          ),
        ),
      );
  }

  void UserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user = User.fromJson(jsonDecode(prefs.getString("userData")!));
    });
  }

  void logOutOfPg() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('user');
    prefs.remove('email');
    prefs.remove('password');
    // prefs.setString('username', username);
    // prefs.setString('email', email);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (c) => MyApp()));
  }
}

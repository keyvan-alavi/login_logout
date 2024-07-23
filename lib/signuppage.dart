import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myloginlogout/AppButton.dart';
import 'package:myloginlogout/after_login_go_to_this.dart';
import 'package:myloginlogout/loginpage.dart';
import 'package:myloginlogout/textfields.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'nika'),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: AppUI(context),
      ),
    );
  }

  Widget AppUI(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromRGBO(105, 100, 195, 1.0),
          Color.fromRGBO(95, 92, 181, 1.0),
          Color.fromRGBO(84, 86, 149, 1.0),
          Color.fromRGBO(51, 70, 129, 1.0),
          Color.fromRGBO(42, 53, 124, 1.0),
          Color.fromRGBO(40, 51, 119, 1.0),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Column(
        children: [
          headerUi(context),
          mainUi(context),
          footerUi(context),
        ],
      ),
    );
  }

  Widget headerUi(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.32,
    );
  }

  Widget mainUi(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.53,
      child: const Column(
        children: [
          Text(
            "خوش آمدید",
            style: TextStyle(
                color: Colors.white, fontSize: 45,
                fontFamily: 'samim',
            fontWeight: FontWeight.bold),
          ),
          Text(
            'در صورتی که هنوز عضو نشدید، ثبت نام کنید',
            style: TextStyle(color: Colors.white70, fontSize: 18),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormFields(
            suffixIcon: Icons.person,
            hintText: 'نام کاربری',
          ),
          SizedBox(
            height: 10,
          ),
          TextFormFields(
            suffixIcon: Icons.mail,
            hintText: 'ایمیل',
          ),
          SizedBox(
            height: 10,
          ),
          TextFormFields(
            suffixIcon: Icons.lock,
            hintText: 'رمز عبور',
            passwordcheck: true,
          ),
          SizedBox(
            height: 10,
          ),
          TextFormFields(
            suffixIcon: Icons.lock,
            hintText: 'تکرار رمز عبور',
            passwordcheck: true,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "با عضویت در این برنامه قوانین ما",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            "را پذیرفته اید",
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget footerUi(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.15,
        child: Column(
          children: [
            GradientButton(context, () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AfterLoginGoToThis();
                  },
                ),
              );
            }, "عضویت"),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Loginpage();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      "وارد شوید",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                const Text(
                  'در صورتی که قبلا عضو شدید',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.end,
                ),
              ],
            )
          ],
        ));
  }
}

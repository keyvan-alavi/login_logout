import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myloginlogout/AppButton.dart';
import 'package:myloginlogout/after_login_go_to_this.dart';
import 'package:myloginlogout/signuppage.dart';
import 'package:myloginlogout/textfields.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

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
      child: Column(
        children: [
          const Text(
            "خوش آمدید",
            style: TextStyle(
                color: Colors.white, fontSize: 45,
                fontFamily: 'samim',
                fontWeight: FontWeight.bold),
          ),
          const Text(
            'به اکانت خود وارد شوید',
            style: TextStyle(color: Colors.white70, fontSize: 18),
          ),
          const SizedBox(
            height: 30,
          ),
          const TextFormFields(
            suffixIcon: Icons.person,
            hintText: 'نام کاربری',
          ),
          const SizedBox(
            height: 15,
          ),
          const TextFormFields(
            suffixIcon: Icons.lock,
            hintText: 'رمز عبور',
            passwordcheck: true,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 20, 0),
            child: Row(
              children: [
                const Text(
                  "فراموشی رمز عبور",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                const Text(
                  "ذخیره مشخصات",
                  style: TextStyle(color: Colors.white),
                ),
                Checkbox(value: true, onChanged: (value) {}),
              ],
            ),
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
            }, "ورود"),
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
                            return Signuppage();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      "عضو شوید",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                const Text(
                  'هنوز عضو نشدید؟',
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

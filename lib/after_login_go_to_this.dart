import 'package:flutter/material.dart';
import 'package:myloginlogout/main.dart';

class AfterLoginGoToThis extends StatefulWidget {
  const AfterLoginGoToThis({super.key});

  @override
  State<AfterLoginGoToThis> createState() => _AfterLoginGoToThisState();
}

class _AfterLoginGoToThisState extends State<AfterLoginGoToThis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child:Card(
              margin: EdgeInsets.all(10.0),

              color: const Color.fromRGBO(60, 180, 130, 1.0),
              child:Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "به برنامه خوش آمدید",
                    style: TextStyle(fontSize: 30),
                  ),
                  const Text(
                    'این یوزر اینترفیس به صورت آزمایشی جهت تمرین تهیه شده است',
                    style: TextStyle(fontSize: 20), textAlign: TextAlign.center,
                  ),
                  const Text('Keyvan', style: TextStyle(fontSize: 30),),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return MyApp();
                          }),
                        );
                      },
                      child: Text('بازگشت به صفحه اول')),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:rose_hacks_2022/emergancy_screen.dart';
import 'package:rose_hacks_2022/map_screen.dart';
import 'package:rose_hacks_2022/problem_solver_screen.dart';
import 'package:rose_hacks_2022/MainPage.dart';
import 'package:auth0_flutter_web/auth0_flutter_web.dart';

void main() {
  runApp(const MyApp()); //<-- change info on server to localhost first
  //flutter run --no-sound-null-safety
  //startApp();
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background2final.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Container(padding: EdgeInsets.all(40)),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Image.asset("safetyforall.jpg", height: 200, width: 200,)
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Safety For All',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 50),
                  )
                ),
                Container(padding: EdgeInsets.all(10)),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Get informed, Get help, Get safe.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                Container(padding: EdgeInsets.all(10)),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Sign In'),
                    onPressed: () {
                      clicked();
                    },
                  )
                ),
              ],
            ),
          ),
        ),
        /*floatingActionButton: FloatingActionButton(
          onPressed: clicked,
        ),*/
      ),
    );
  }
}

void clicked() async {
  Auth0 auth0 = await createAuth0Client(Auth0CreateOptions(
    domain: 'dev-d5l2dcsh.us.auth0.com',
    client_id: 'jPShIGGpUmcNIlzpe1yNv5Ax7DcYXCwx',
  ));

  String token = await auth0.getTokenWithPopup();
  startApp();
}

void startApp() {
  runApp(const MainPage());
}

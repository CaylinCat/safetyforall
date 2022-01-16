import 'package:flutter/material.dart';
import 'package:rose_hacks_2022/emergancy_screen.dart';
import 'package:rose_hacks_2022/map_screen.dart';
import 'package:rose_hacks_2022/phone_screen.dart';
import 'package:rose_hacks_2022/problem_solver_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  int index = 1;
  final screens = [
    /*Text("hi"),
    Text("bye"),
    Text("why") */
    ProblemSolver(),
    MapStage(),
    //EmergancyScreen()
    PhoneScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens[index],
        bottomNavigationBar:  NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500
              )
            ),
          ),
          child: NavigationBar(
            height: 70,
            //backgroundColor: Color()
            selectedIndex: index,
            onDestinationSelected: (index) => 
              setState(() {
                this.index = index;
              }),
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home), 
                label: 'Info'
              ),
              NavigationDestination(
                icon: Icon(Icons.map), 
                label: 'Survival'
              ),
              NavigationDestination(
                icon: Icon(Icons.dangerous), 
                label: 'Emergancy'
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rose_hacks_2022/classes/infoPagePlain.dart';
import 'package:rose_hacks_2022/pagesForProblemSolv/abortionPage.dart';
import 'package:rose_hacks_2022/pagesForProblemSolv/carSafety.dart';
import 'package:rose_hacks_2022/pagesForProblemSolv/foodPage.dart';
import 'package:rose_hacks_2022/pagesForProblemSolv/medicinePage.dart';
import 'package:rose_hacks_2022/pagesForProblemSolv/mentalhealth.dart';
import 'package:rose_hacks_2022/pagesForProblemSolv/survivalPage.dart';

class articles {

  static List<InfoPagePlain> getArticles() {
    return [
      InfoPagePlain(
        name: "Road Safety",
        color: Colors.yellow,
        imageName: "assets/cars.jpg",
        icon: Icons.traffic,
        pageName: CarSafety(),
        information: ""
      ),
      InfoPagePlain(
        name: "All About Abortion",
        color: Colors.blue,
        imageName: "assets/abortion.jpg",
        icon: Icons.traffic,
        pageName: AbortionPage(),
        information: ""
      ),
      InfoPagePlain(
        name: "Surviving Food Allergies",
        color: Colors.red,
        imageName: "assets/eatingdisorder.jpg",
        icon: Icons.traffic,
        pageName: FoodPage(),
        information: ""
      ),
      InfoPagePlain(
        name: "Medicine Help",
        color: Colors.green,
        imageName: "assets/care.jpg",
        icon: Icons.traffic,
        pageName: MedicinePage(),
        information: ""
      ),
      InfoPagePlain(
        name: "Survival Help",
        color: Colors.blue,
        imageName: "assets/crisisadult.jpg",
        icon: Icons.traffic,
        pageName: SurvivalPage(),
        information: ""
      ),
      InfoPagePlain(
        name: "Mental Health",
        color: Colors.amber,
        imageName: "assets/mental_health.png",
        icon: Icons.health_and_safety,
        pageName: MentalHealth(),
        information: ""
      ),
    ];
  }
}
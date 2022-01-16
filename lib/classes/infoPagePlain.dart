import 'dart:ui';

import 'package:flutter/cupertino.dart';

class InfoPagePlain {
  String name;
  IconData icon;
  Color color;
  String information;
  String imageName;
  Widget pageName;

  InfoPagePlain({
    required this.name,
    required this.icon,
    required this.color,
    required this.information,
    required this.imageName,
    required this.pageName,
  });
}

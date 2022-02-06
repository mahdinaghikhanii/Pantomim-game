import 'package:flutter/material.dart';
import 'dart:ui';

class PantomimData {
  final String image, desc, name;

  PantomimData(this.image, this.desc, this.name);
}

class ListTypeOfMatch {
  final String team1, team2, team3, team4;

  ListTypeOfMatch(this.team1, this.team2, this.team3, this.team4);
}

class TextFiledInputNameTeam {
  final String value;
  TextFiledInputNameTeam(this.value);
}

class Particle {
  double size;
  double radius;
  double startingTheta;
  Color color;

  Particle(
      {required this.size,
      required this.color,
      required this.startingTheta,
      required this.radius});
}

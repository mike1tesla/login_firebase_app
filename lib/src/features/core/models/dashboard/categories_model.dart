import 'package:flutter/material.dart';

class DashboardCategories {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategories(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCategories> list = [
    DashboardCategories("JS", "JavaScript", "10 lessons", null),
    DashboardCategories("Py", "Python", "9 lessons", null),
    DashboardCategories("C++", "C Plus Plus", "12 lessons", null),
    DashboardCategories("J", "Java", "11 lessons", null),
    DashboardCategories("F", "Flutter", "10 lessons", null)
  ];
}
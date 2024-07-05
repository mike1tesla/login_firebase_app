import 'package:flutter/material.dart';


class CourseModel {
  final String courseTitle;
  final String courseSection;
  final String courseDescription;
  final VoidCallback? onPressPlay;

  CourseModel(this.courseTitle, this.courseSection, this.courseDescription,
      this.onPressPlay);
  
  static List<CourseModel> list = [
    CourseModel("Flutter Crash Course", "3 Sections", "Programing Languages", null),
    CourseModel("Material Design Course", "6 Sections", "Programing & Design", null),
    CourseModel("HTML/CSS Course", "2 Sections", "35 Lessons", null),
    CourseModel("C++ for Beginner Course", "4 Sections", "Programing Languages", null)


  ];
}
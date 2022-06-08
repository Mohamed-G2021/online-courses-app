import 'package:flutter/material.dart';
import 'package:online_courses_project/data/courses_api.dart';
import 'package:online_courses_project/ui/list_courses.dart';

void main() {
  runApp(MyApp());
  CoursesAPI().getCourses();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dev School',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Cairo',
      ),
      home: CoursesList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_courses_project/data/course_model.dart';
import 'package:online_courses_project/data/courses_api.dart';
import 'package:online_courses_project/ui/list_courses.dart';

void main() {
  runApp(MyApp());
  CoursesAPI().getCourses();
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Course> courses = [];
  @override
  void initState() {
    // TODO: implement initState
    CoursesAPI().getCourses().then((value) {
      setState(() {
        courses = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dev School',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Cairo',
      ),
      home: CoursesList(courses),
    );
  }
}

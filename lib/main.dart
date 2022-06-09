import 'package:flutter/material.dart';
import 'package:online_courses_project/data/course_model.dart';
import 'package:online_courses_project/data/courses_api.dart';
import 'package:online_courses_project/providers/courses_list_provider.dart';
import 'package:online_courses_project/ui/list_courses.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<CoursesListProvider>(
          create: (_) => CoursesListProvider())
    ],
    child: MyApp(),
  ));
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
    super.initState();
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
      home: CoursesList(),
    );
  }
}

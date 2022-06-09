import 'package:flutter/widgets.dart';
import 'package:online_courses_project/data/course_model.dart';
import 'package:online_courses_project/data/courses_api.dart';

enum ListScreenState { initial, loading, loaded }

class CoursesListProvider with ChangeNotifier {
  ListScreenState state = ListScreenState.initial;
  List<Course>? coursesList;

  getCourses() async {
    coursesList = await CoursesAPI().getCourses();
    state = ListScreenState.loaded;
    notifyListeners();
  }
}

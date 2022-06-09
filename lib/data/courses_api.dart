import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:online_courses_project/data/course_model.dart';
import 'package:online_courses_project/data/courses_response.dart';

class CoursesAPI {
  Future<List<Course>> getCourses() async {
    var url =
        'https://raw.githubusercontent.com/mhassanist/courses-list-api/main/db.json';
    var response = await http.get(Uri.parse(url));
    CoursesResponse? coursesResponse;

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      coursesResponse = CoursesResponse.fromJson(jsonResponse);
    } else {
      debugPrint('Request failed with status: ${response.statusCode}.');
    }
    return coursesResponse!.data!;
  }
}

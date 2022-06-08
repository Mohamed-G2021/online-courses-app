import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CoursesAPI {
  Future<List<dynamic>> getCourses() async {
    var url =
        'https://raw.githubusercontent.com/mhassanist/courses-list-api/main/db.json';
    var response = await http.get(Uri.parse(url));
    var data;
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      data = jsonResponse['data'];
      debugPrint('response is : $data.');
      var metaData = jsonResponse['meta_data'];
      debugPrint("developer message is : ${metaData['developer_message']}");
    } else {
      debugPrint('Request failed with status: ${response.statusCode}.');
    }
    return data;
  }
}

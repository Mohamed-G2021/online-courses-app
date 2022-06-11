import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  static const routeName = '/course_details';
  var course;
  CourseDetails({this.course});

  @override
  Widget build(BuildContext context) {
    course = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(course.title)),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "passed data");
              },
              child: Text("close"))
        ],
      ),
    );
  }
}

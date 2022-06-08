import 'package:flutter/material.dart';
import 'package:online_courses_project/ui/widgets/course_card.dart';
import '../data/course_model.dart';

class CoursesList extends StatelessWidget {
  List<Course>? coursesList;

  @override
  Widget build(BuildContext context) {
    coursesList = _buildDummyCoursesList();
    return _buildCoursesScreen();
  }

  _buildCoursesScreen() {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildCourseListHeader(),
            _buildCoursesList(),
          ],
        ),
      ),
    );
  }

  _buildCourseListHeader() {
    return Container(
      child: Center(
        child: Text(
          "الدورات الحالية",
          style: TextStyle(fontSize: 38, fontFamily: 'Cairo'),
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/header_bg.jpg'),
        ),
      ),
    );
  }

  _buildCoursesList() {
    return Expanded(
      child: ListView.builder(
          itemCount: coursesList!.length,
          padding: EdgeInsets.symmetric(horizontal: 15),
          itemBuilder: (context, index) {
            return CourseCard(
              course: coursesList![index],
            );
          }),
    );
  }

  _buildDummyCoursesList() {
    coursesList = [];
    coursesList!.add(Course(
      id: 100,
      image:
          'https://cdn3.f-cdn.com/contestentries/1112912/26228964/599ac11baba88_thumb900.jpg',
      title: 'Youtube Marketing | التسويق الرقمي',
      description: 'Learn the best practices in Youtube Marketing',
    ));
    coursesList!.add(Course(
      id: 200,
      image: 'https://hackr.io/blog/best-java-courses/thumbnail/large',
      title: 'Introduction to Java | مقدمة فى الجافا',
      description:
          'Description Introduction to Java Description Introduction to Java Description Introduction to Java',
    ));
    coursesList!.add(Course(
      id: 300,
      image:
          'https://5.imimg.com/data5/QD/VX/MY-61372866/flutter-application-development-500x500.png',
      title: 'Mobile Development With Flutter | تطوير التطبيقات باستخدام فلاتر',
      description: 'This course is a mobile development With Flutter',
    ));

    return coursesList;
  }
}

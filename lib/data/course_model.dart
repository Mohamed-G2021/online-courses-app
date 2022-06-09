class Course {
  int? id;
  String? image;
  String? title;
  String? description;

  Course({this.id, this.image, this.title, this.description});

  factory Course.fromJson(Map<String, dynamic> json) {
    Course c = Course();

    c.id = json['id'];
    c.image = json['image'];
    c.title = json['title'];
    c.description = json['description'];

    return c;
  }
}

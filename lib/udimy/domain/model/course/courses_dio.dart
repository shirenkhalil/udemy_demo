class CoursesModelDio {
  List<Data>? data;

  CoursesModelDio({this.data});

  CoursesModelDio.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  Course? course;

  Data({this.course});

  Data.fromJson(Map<String, dynamic> json) {
    course =
    json['course'] != null ? new Course.fromJson(json['course']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.course != null) {
      data['course'] = this.course!.toJson();
    }
    return data;
  }
}

class Course {
  int? id;
  String? mainTitle;
  String? profileEmail;

  Course({this.id, this.mainTitle, this.profileEmail});

  Course.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mainTitle = json['mainTitle'];
    profileEmail = json['profile_email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mainTitle'] = this.mainTitle;
    data['profile_email'] = this.profileEmail;
    return data;
  }
}

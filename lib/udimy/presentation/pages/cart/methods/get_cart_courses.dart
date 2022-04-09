import 'package:udeme_demo/udimy/data/data_sources/database/constant_data.dart';
import 'package:udeme_demo/udimy/domain/model/course/course_model.dart';

List<CourseModel> getCartCourses(){
  return coursesListCart;
}
List<CourseModel> getMyLearningCourses(){
  return coursesListMyLearning;
}
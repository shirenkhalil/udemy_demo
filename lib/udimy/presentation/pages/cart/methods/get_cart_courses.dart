import 'package:udeme_demo/udimy/data/data_sources/database/constant_data.dart';
import 'package:udeme_demo/udimy/domain/model/course/course_model.dart';

List<CourseModel> getCoursesListCart ()=> coursesListCart;

List<CourseModel> getCoursesListMyLearning ()=> coursesListMyLearning;

totalList (coursesListCart,coursesListMyLearning){
  coursesListMyLearning.addAll(coursesListCart);
  coursesListCart.clear();
}

List<CourseModel> getCartPrice()=> cartPrice;

List<CourseModel> getCoursesPrice ()=> coursesPrice;


totalPrice(cartPrice,coursesPrice){
  cartPrice.addAll(coursesPrice);
}


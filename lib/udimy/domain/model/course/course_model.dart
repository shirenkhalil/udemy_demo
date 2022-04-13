// ignore_for_file: avoid_print

class CourseModel {
  int id ;
  String title,description,image,personImage,personName ,type ;
  double oldPrice ,newPrice ,disPrice ;
  bool   isCart;



  CourseModel({
    required this.id,
    required this. title,
    required this.description,
    required this. image,
    required this. personImage,
    required this. personName,
    required this. oldPrice,
    required this. newPrice,
    required this. disPrice,
    required this.isCart,
   required this.type,
  });
}

double newPrice ({oldPrice, disPrice}){
  return
    oldPrice-(oldPrice*disPrice);
}


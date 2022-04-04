class CourseModel {
  int id ;
  String title;
  String image;
  String personImage;
  String personName;
  double oldPrice;
  double newPrice;
  double disPrice;
  bool   isCart;

  CourseModel({
    required this.id,
    required this. title,
    required this. image,
    required this. personImage,
    required this. personName,
    required this. oldPrice,
    required this. newPrice,
    required this. disPrice,
    required this.isCart,
  } );}

double newPrice ({oldPrice, disPrice}){
  print('oldPrice=$oldPrice   disPrice= $disPrice');
  return
    oldPrice-(oldPrice*disPrice);
}
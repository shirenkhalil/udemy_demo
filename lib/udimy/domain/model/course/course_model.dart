class CourseModel {

  String title;
  String image;
  String personImage;
  String personName;
  double oldPrice;
  double newPrice;
  double disPrice;

  CourseModel({

    required this. title,
    required this. image,
    required this. personImage,
    required this. personName,
    required this. oldPrice,
    required this. newPrice,
    required this. disPrice,
  } );}

double newPrice ({oldPrice, disPrice}){
  print('oldPrice=$oldPrice   disPrice= $disPrice');
  return
    oldPrice-(oldPrice*disPrice);
}
 List<CourseModel> courseList =[
  CourseModel(
    title:'Python',
    image:'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/pell.jpg',
    personName:'pillGate spillGate spillGate spillGates',
    oldPrice:  1000,
    disPrice: 10/100,
    newPrice:newPrice(oldPrice:1000,disPrice:10/100),
  ),
  CourseModel(
    title:'IELTS Academic Test ',
    image:'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/pell.jpg',
    personName:'Marilyn Monroe',
    oldPrice:  1025,
    disPrice:20/100,
    newPrice:newPrice(oldPrice: 1025,disPrice: 20/100),
  ),
  CourseModel(

    title:'Financial Markets ',
    image:'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/Student-PNG-Clipart.png',
    personName:'Abraham Lincoln',
    oldPrice: 1258.60,
    disPrice: 5/100,
    newPrice:newPrice(oldPrice:1258.60,disPrice:5/100),
  ),
  CourseModel(
    title:'Learning from deep learning.ai',
    image:'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/pell.jpg',
    personName:'Nelson Mandela ',
    oldPrice: 928.45,
    disPrice: 10/100,
    newPrice:newPrice(oldPrice:928.45,disPrice: 30/100),
  ),
  CourseModel(

    title:'Data Science',
    image:'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/pell.jpg',
    personName:'John F. Kennedy',
    oldPrice:  2548,
    disPrice: 0/100,
    newPrice:newPrice(oldPrice: 2548,disPrice: 0/100),
  ),
  CourseModel(

    title:'Python',
    image:'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/pell.jpg',
    personName:'pill Gates',
    oldPrice:  1000,
    disPrice: 0/100,
    newPrice:newPrice(oldPrice: 1000,disPrice:  0/100),
  ),
  CourseModel(

    title:'Python',
    image:'web/assets/images/meeting.jpeg',
    personImage:  'web/assets/images/user.png',
    personName:'Muhammad Ali',
    oldPrice:  928,
    disPrice: 0/100,
    newPrice:newPrice(oldPrice:  928,disPrice:10/100),
  ),
];

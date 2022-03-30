import 'package:sqflite/sqflite.dart';




// List<CourseModel> Course=[
//   CourseModel(
//     id: 1,
//       title:'Python',
//       image:'web/assets/images/meeting.jpeg',
//       personImage: 'web/assets/images/pell.jpg',
//     personName:'pill Gates',
//     oldPrice:  1000,
//     disPrice: 10/100,
//     newPrice:newPrice(oldPrice:  1000,disPrice:10/100),
//   ),
//   CourseModel(
//     id: 2,
//       title:'IELTS Academic Test ',
//       image:'web/assets/images/meeting.jpeg',
//       personImage: 'web/assets/images/pell.jpg',
//     personName:'Marilyn Monroe',
//     oldPrice:  1025,
//     disPrice:20/100,
//     newPrice:newPrice(oldPrice: 1025,disPrice: 20/100),
//   ),
//   CourseModel(
//     id: 3,
//       title:'Financial Markets ',
//       image:'web/assets/images/meeting.jpeg',
//       personImage: 'web/assets/images/Student-PNG-Clipart.png',
//     personName:'Abraham Lincoln',
//     oldPrice: 1258.60,
//     disPrice: 5/100,
//     newPrice:newPrice(oldPrice:1258.60,disPrice:5/100),
//   ),
//   CourseModel(
//     id: 3,
//       title:'Learning from deep learning.ai',
//       image:'web/assets/images/meeting.jpeg',
//       personImage: 'web/assets/images/pell.jpg',
//     personName:'Nelson Mandela ',
//     oldPrice: 928.45,
//     disPrice:30/100,
//     newPrice:newPrice(oldPrice:928.45,disPrice: 30/100),
//   ),
//   CourseModel(
//     id: 4,
//       title:'Data Science',
//       image:'web/assets/images/meeting.jpeg',
//       personImage: 'web/assets/images/pell.jpg',
//     personName:'John F. Kennedy',
//     oldPrice:  2548,
//     disPrice: 0/100,
//     newPrice:newPrice(oldPrice: 2548,disPrice: 0/100),
//   ),
//   CourseModel(
//     id: 5,
//       title:'Python',
//       image:'web/assets/images/meeting.jpeg',
//       personImage: 'web/assets/images/pell.jpg',
//     personName:'pill Gates',
//     oldPrice:  1000,
//     disPrice: 0/100,
//     newPrice:newPrice(oldPrice: 1000,disPrice:  0/100),
//   ),
//   CourseModel(
//     id: 6,
//       title:'Python',
//       image:'web/assets/images/meeting.jpeg',
//       personImage:  'web/assets/images/user.png',
//     personName:'Muhammad Ali',
//     oldPrice:  928,
//     disPrice: 10/100,
//     newPrice:newPrice(oldPrice:  928,disPrice:10/100),
//   ),
// ];






Future<void> createDatabase() async {
  Database database = await openDatabase(
      'udemy.db',
      version: 1,
      onCreate: (Database db, int version) async {
        print('Database Create');
        await db.execute(
            'CREATE TABLE Course ('
                'id INTEGER PRIMARY KEY,'
                ' title TEXT,'
                ' image TEXT,'
                ' personImage TEXT,'
                ' personName TEXT,'
                ' oldPrice DOUBLE,'
                ' newPrice DOUBLE,'
                ' disPrice DOUBLE,'
                ' isCart final,'
                ' isLearn final,'
                ' isFavorite final,'
                ')').then((value) {
                  print('tableCreate');

        }).catchError((error){
                  print ('error:${error.toString}');
        });
      });
       // onOpen:(){};
}

Future<void> insertToDatabase(
   String title,
  String image,
  String personImage,
  String personName,
  double oldPrice,
  double newPrice,
  double disPrice,
    final isCart,
    final isLearn,
    final isFavorite,
) async {
   var database;
  return await database.transaction((txn) async {
   txn.rawInsert(
        'INSERT INTO Course ('
            'title, image,personImage,personName,oldPrice,newPrice,disPrice,isCart,isLearn,isFavorite'
            ') VALUES('
            '"$title","$image","$personImage", "$personName",$oldPrice,$newPrice,$disPrice,$isCart,$isLearn,$isFavorite)').
   then((value){ print('$value insert successfully');}).
     catchError((error){print('Error when Insert New Record ${error.toString}');});
  });
}
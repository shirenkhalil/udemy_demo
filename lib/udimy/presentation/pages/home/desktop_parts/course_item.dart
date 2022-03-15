
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage('web/assets/images/meeting.jpeg',),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Digital Marketing',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Build skills with courses , certificates ,and degrees online from world - universities.',
              style: TextStyle(
                  color: Colors.black
              ),),
          ),
          Row(
            children: [
              SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('web/assets/images/pell.jpg'),
                radius: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pill Gates',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'professor of oxford University in the united state welcome in our courses professor of oxford University in the united state welcome in our courses',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[600],
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),

            ],

          ),


        ],
      ),
    );
  }
}


class MobCourseItem extends StatelessWidget {
  const MobCourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height:150,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('web/assets/images/meeting.jpeg',),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Digital Marketing',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            SizedBox(width: 10,),
            CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('web/assets/images/pell.jpg'),
              radius: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pill Gates',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],

        ),


      ],
    );
  }
}



import 'package:flutter/material.dart';

class WebCourseItem extends StatelessWidget {
  const WebCourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 320,
        width: 300,
        alignment: Alignment.center,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal:5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.blue[900]!, blurRadius: 5),]
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              height:150,
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
              padding: const EdgeInsets.only(left: 5,bottom: 5,top: 8,),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Digital Marketing',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
            SizedBox(height:10,),
            Row(
              children: [
                SizedBox(width: 3,),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('web/assets/images/pell.jpg'),
                  radius: 20,
                ),
                SizedBox(width: 5,),
                Text(
                  'Pill Gates',
                  maxLines:1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('800',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        SizedBox(width: 5,),
                        // if(model.discount !=0)
                        Text('1000',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 13,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          color: Colors.green[100],
                          child: Text(
                            'Bestseller',
                            style: TextStyle(
                              fontSize:15,
                              color: Colors.green[900],
                            ),
                          ),),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){},
                    icon: Icon(Icons.favorite_border_outlined)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class MobCourseItem extends StatelessWidget {
  const MobCourseItem({int? index,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 280,
      width: 260,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal:1),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.blue[900]!, blurRadius: 5),]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
           margin: EdgeInsets.only(top: 5),
            height:100,
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
            padding: const EdgeInsets.only(left: 5,bottom: 5,top: 8,),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Digital Marketing',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
            ),
          ),
          SizedBox(height:10,),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('web/assets/images/pell.jpg'),
                radius: 20,
              ),
              SizedBox(width: 3,),
              Text(
                'Pill Gates',
                maxLines:1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('800',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(width: 5,),
                      // if(model.discount !=0)
                      Text('1000',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 13,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        color: Colors.green[100],
                        child: Text(
                          'Bestseller',
                          style: TextStyle(
                            fontSize:15,
                            color: Colors.green[900],
                          ),
                        ),),
                    ],
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border_outlined)),
            ],
          ),
        ],
      ),
    );
  }
}


class CourseItem extends StatelessWidget {
  CourseItem(int index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int oldPrice = 1000;
    int newPrice = 800;
    int disPrice = 3;
    bool isClick = true;


    return
      Container(
        // width: 50,
        // height: 50,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 1),
        decoration: BoxDecoration(
            color: Colors.white,
            // color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.blue[900]!, blurRadius: 5),]
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                // height:150,
                // width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('web/assets/images/meeting.jpeg',),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Digital Marketing',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            ),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('web/assets/images/pell.jpg'),
                  radius: 20,
                ),
                SizedBox(width: 3,),
                Text(
                  'Pill Gates',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            // SizedBox(height: 20,),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text('$newPrice',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        SizedBox(width: 5,),
                        // if(model.discount !=0)
                        if(disPrice != 0)
                          Text('$oldPrice',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.bold,
                            ),),
                      ],
                    ),
                    if(disPrice != 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            color: Colors.green[100],
                            child: Text(
                              'Bestseller',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.green[900],
                              ),
                            ),),
                        ],
                      ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: isClick ?
                  Icon(Icons.favorite, color: Colors.red) :
                  Icon(Icons.favorite_border_outlined, color: Colors.white),

                  onPressed: () {
                    setState((){
                      isClick = !isClick;
                    });

                  },
                ),
              ],
            ),


          ],
        ),
      );
  }


}

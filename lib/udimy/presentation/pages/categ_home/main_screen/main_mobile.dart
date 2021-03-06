import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/component.dart';

import '../../../../domain/model/categories/categories_model.dart';
import '../../../widgets/res/main_mobile/zoom_drawer_mobile.dart';

class MainMobileCategoriesH extends StatefulWidget {
  const MainMobileCategoriesH({Key? key}) : super(key: key);

  @override
  _MainMobileCategoriesHState createState() {
    return _MainMobileCategoriesHState();
  }
}

class _MainMobileCategoriesHState extends State<MainMobileCategoriesH> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: titleRow(context: context,text: 'Categories'),
        elevation: 0,
        leading:  MenuWidget(),
        //     IconButton(
        //   onPressed:() => Get.toNamed(HOME),
        //   icon:Icon(
        //     Icons.menu,
        //     color: mobColor,
        //     size: 40,
        //   ),
        // ),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: Height(context) * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.separated(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
                itemBuilder: (context, index) =>buildMobCatScreenItem (CatModel.catList[index]),
                separatorBuilder: (context,index)=>Divider(
                  color: mobColor,
                  thickness: 3,
                  indent:20,
                  endIndent: 20,
                ),
                itemCount: CatModel.catList.length,
            ),
            Divider(
              color: mobColor,
              thickness: 3,
              indent:20,
              endIndent: 20,
            ),
          ],
        ),
      ),
    );
  }
  Widget buildMobCatScreenItem (CatModel model) =>Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
      height: 50,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: model.color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
        ButtonCategoriesItem(
        text: model.title,
        backgroundColor: model.color,
        assentImage: model.imageUrl,
        height:50,
        width: 300,
        onPressed: () {},
      ),
          Spacer(),
          Align(
            alignment: Alignment.topCenter,
            child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios,size: 35,color: Colors.white,)
            ),
          ),

        ],
      ),
    ),
  );

}

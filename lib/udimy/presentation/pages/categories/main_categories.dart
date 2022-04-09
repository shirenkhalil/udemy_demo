import 'package:flutter/material.dart';
import 'package:udeme_demo/udimy/presentation/pages/categories/main_screen/main_desktop.dart';
import 'package:udeme_demo/udimy/presentation/pages/categories/main_screen/main_mobile.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/responsive.dart';


class MainCategories extends StatefulWidget {
  MainCategories({Key? key}) : super(key: key);

  @override
  _MainCategoriesState createState() {
    return _MainCategoriesState();
  }
}

class _MainCategoriesState extends State<MainCategories> {
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
    return Responsive(
        mobile: MainMobileCategories(),
        tablet: MainMobileCategories(),
        desktop: MainDesktopCategories());
  }
}

import 'package:flutter/material.dart';
import 'package:udeme_demo/injection.dart';
import 'package:udeme_demo/udimy/domain/use_cases/case.dart';
import 'package:udeme_demo/udimy/presentation/pages/categ_home/main_screen/main_desktop.dart';
import 'package:udeme_demo/udimy/presentation/pages/categ_home/main_screen/main_mobile.dart';
import 'package:udeme_demo/udimy/presentation/pages/categories/main_screen/main_desktop.dart';
import 'package:udeme_demo/udimy/presentation/pages/categories/main_screen/main_mobile.dart';
import 'package:udeme_demo/udimy/presentation/widgets/res/responsive.dart';


class MainCategoriesH extends StatefulWidget {
  MainCategoriesH({Key? key}) : super(key: key);

  @override
  _MainCategoriesHState createState() {
    return _MainCategoriesHState();
  }
}

class _MainCategoriesHState extends State<MainCategoriesH> {
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
        mobile:MainMobileCategoriesH(),
        tablet:MainMobileCategoriesH(),
        desktop: MainDesktopCategoriesH());
  }
}

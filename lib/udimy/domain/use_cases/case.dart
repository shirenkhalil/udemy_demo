import 'package:flutter/cupertino.dart';
import 'package:udeme_demo/udimy/domain/repositories/domain_repositry.dart';


class Cases {
  DomainRepositry domainRepositry;

  Cases({required this.domainRepositry});

 Future testExample(){
    return domainRepositry.testExample();
  }
}

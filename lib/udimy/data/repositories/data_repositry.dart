import 'package:flutter/cupertino.dart';
import 'package:udeme_demo/udimy/data/data_sources/api/dio_remote.dart';
import 'package:udeme_demo/udimy/data/data_sources/database/shared_preferences.dart';
import 'package:udeme_demo/udimy/domain/repositories/domain_repositry.dart';

class DataRepositry extends DomainRepositry {
  DioRemote dioRemote;
  GetSharedPreference getSharedPreference;

  DataRepositry({
    required this.dioRemote,
    required this.getSharedPreference,
  });

  @override
  testExample() {
    return dioRemote.test();
  }


}

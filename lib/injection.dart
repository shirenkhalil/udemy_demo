



import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:udeme_demo/udimy/data/data_sources/api/dio_remote.dart';
import 'package:udeme_demo/udimy/data/data_sources/database/shared_preferences.dart';
import 'package:udeme_demo/udimy/data/repositories/data_repositry.dart';
import 'package:udeme_demo/udimy/domain/repositories/domain_repositry.dart';
import 'package:udeme_demo/udimy/domain/use_cases/case.dart';




final sl = GetIt.instance;

//injection

Future<void> init()async{
  //! feature
  // for bloc
  // * cases
  sl.registerLazySingleton(() => Cases(domainRepositry: sl())); //? need domain repositry



  // * repository
  sl.registerLazySingleton<DomainRepositry>(() => DataRepositry(getSharedPreference: sl(), dioRemote: sl()));

  //! external

  sl.registerLazySingleton(() => DioRemote());
  sl.registerLazySingleton(() => GetSharedPreference(sharedPreferences: sl()));
  // * database from local data source
  //sl.registerLazySingleton(() => DBHelper());
  await GetStorage.init();
  //sharedpreference package  ==> getstorage pacakge
  final sharedPreferences = GetStorage();
  sl.registerLazySingleton<GetStorage>(() => sharedPreferences);
}

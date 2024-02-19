import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'package:first_task/core/platform/network_info.dart';
import 'package:first_task/feature/data/datasources/local_data_source.dart';
import 'package:first_task/feature/data/datasources/remote_data_source.dart';
import 'package:first_task/feature/data/repositories/specialists_repository.dart';
import 'package:first_task/feature/domain/usecases/get_all_specialists.dart';
import 'package:first_task/feature/domain/usecases/search_specialist.dart';
import 'package:first_task/feature/presentation/bloc/bloc/search_bloc.dart';
import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC & Cubit
  sl.registerFactory(
    () => SpecialistsListCubit(getAllSpecialists: sl<GetAllSpecialists>()),
  );
  sl.registerFactory(
    () => SpecialistsSearchBloc(searchSpecialists: sl()),
  );

  // UseCases
  sl.registerLazySingleton(() => GetAllSpecialists(sl()));
  sl.registerLazySingleton(() => SearchSpecialists(sl()));

  // Repository
  sl.registerFactory(
    () => SpecialistsRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton<SpecialistsRemoteDataSource>(
    () => SpecialistsRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  sl.registerLazySingleton<SpecialistsLocalDataSource>(
    () => SpecialistsLocalDataSourceImpl(sharedPreferences: sl()),
  );

  // Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(sl()),
  );

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}

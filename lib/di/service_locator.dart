import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:first_task/core/platform/network_info.dart';
import 'package:first_task/feature/data/datasources/local/local_data_source.dart';
import 'package:first_task/feature/data/datasources/remote/remote_data_source.dart';
import 'package:first_task/feature/data/repositories/specialists_repository.dart';
import 'package:first_task/feature/domain/usecases/get_all_specialists.dart';
import 'package:first_task/feature/presentation/bloc/specialists_bloc/specialists_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC
  sl.registerFactory(
    () => SpecialistsBloc(getAllSpecialists: sl<GetAllSpecialists>()),
  );

  // UseCases
  sl.registerLazySingleton(() => GetAllSpecialists(sl()));

  // DataSources
  sl.registerLazySingleton<ISpecialistsRemoteDataSource>(
    () => SpecialistsRemoteDataSourceImpl(
      dio: sl(),
    ),
  );

  sl.registerLazySingleton<ISpecialistsLocalDataSource>(
    () => SpecialistsLocalDataSourceImpl(sharedPreferences: sl()),
  );

  // Repository
  sl.registerLazySingleton(
    () => SpecialistsRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  // Core
  sl.registerLazySingleton<INetworkInfo>(
    () => NetworkInfoImpl(sl()),
  );

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => Dio()..interceptors.add(PrettyDioLogger()));
}

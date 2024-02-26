import 'package:dartz/dartz.dart';

import 'package:first_task/core/error/exceptions.dart';
import 'package:first_task/core/error/faliure.dart';
import 'package:first_task/core/platform/network_info.dart';
import 'package:first_task/feature/data/datasources/local_data_source.dart';
import 'package:first_task/feature/data/datasources/remote_data_source.dart';
import 'package:first_task/feature/data/models/specialists_model/specialists_model.dart';
import 'package:first_task/feature/data/repositories/mapper/specialists_entity_mapper.dart';
import 'package:first_task/feature/domain/repositiries/specialists_repository_interface.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';

class SpecialistsRepositoryImpl implements ISpecialistsRepository {
  final ISpecialistsRemoteDataSource remoteDataSource;
  final ISpecialistsLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  SpecialistsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<SpecialistsEntity>>> getAllSpecialists(
    int page,
  ) async {
    return await _getSpecialists(
      () => remoteDataSource.getAllSpecialists(page),
    );
  }

  Future<Either<Failure, List<SpecialistsEntity>>> _getSpecialists(
    Future<List<SpecialistsModel>> Function() getSpecialists,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSpecialists = await getSpecialists();
        await localDataSource.specialistsToCache(remoteSpecialists);

        var specialistsEntity =
            remoteSpecialists.map((e) => specialistsToEntity(e)).toList();

        return Right(specialistsEntity);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localSpecialists =
            await localDataSource.getLastSpecialistsModelFromCache();

        var specialistsEntity =
            localSpecialists.map((e) => specialistsToEntity(e)).toList();

        return Right(specialistsEntity);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}

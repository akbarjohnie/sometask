import 'package:dartz/dartz.dart';

import 'package:first_task/core/error/faliure.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';

abstract interface class ISpecialistsRepository {
  Future<Either<Failure, List<SpecialistsEntity>>> getAllSpecialists(
    int page,
  );

  Future<Either<Failure, List<SpecialistsEntity>>> searchSpecialists(
    String query,
  );
}

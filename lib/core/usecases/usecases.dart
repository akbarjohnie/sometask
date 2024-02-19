import 'package:dartz/dartz.dart';

import 'package:first_task/core/error/faliure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

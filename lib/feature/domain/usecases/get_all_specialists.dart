import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:first_task/core/error/faliure.dart';
import 'package:first_task/core/usecases/usecases.dart';
import 'package:first_task/feature/data/repositories/specialists_repository.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';

class GetAllSpecialists
    extends UseCase<List<SpecialistsEntity>, PageSpecialistsParams> {
  final SpecialistsRepositoryImpl specialistsRepository;

  GetAllSpecialists(this.specialistsRepository);

  @override
  Future<Either<Failure, List<SpecialistsEntity>>> call(
    PageSpecialistsParams params,
  ) async {
    return await specialistsRepository.getAllSpecialists(params.page);
  }
}

class PageSpecialistsParams extends Equatable {
  final int page;

  const PageSpecialistsParams({required this.page});

  @override
  List<Object> get props => [page];
}

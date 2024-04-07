import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:first_task/core/error/faliure.dart';
import 'package:first_task/core/usecases/usecases.dart';
import 'package:first_task/feature/data/repositories/specialists_repository.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';

class GetAllSpecialists
    implements IUseCase<List<SpecialistsEntity>, SpecialistsParams> {
  final SpecialistsRepositoryImpl _specialistsRepository;

  GetAllSpecialists(this._specialistsRepository);

  @override
  Future<Either<Failure, List<SpecialistsEntity>>> call(
    SpecialistsParams params,
  ) async {
    return await _specialistsRepository.getAllSpecialists(params.page);
  }
}

class SpecialistsParams extends Equatable {
  final int page;

  const SpecialistsParams({required this.page});

  @override
  List<Object> get props => [page];
}

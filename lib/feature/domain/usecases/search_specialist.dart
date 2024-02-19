import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:first_task/core/error/faliure.dart';

import 'package:first_task/core/usecases/usecases.dart';
import 'package:first_task/feature/data/repositories/specialists_repository.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';

class SearchSpecialists
    extends UseCase<List<SpecialistsEntity>, SearchSpecialistsParams> {
  final SpecialistsRepositoryImpl specialistsRepository;

  SearchSpecialists(this.specialistsRepository);

  @override
  Future<Either<Failure, List<SpecialistsEntity>>> call(
      SearchSpecialistsParams params) async {
    return await specialistsRepository.searchSpecialists(params.query);
  }
}

class SearchSpecialistsParams extends Equatable {
  final String query;

  const SearchSpecialistsParams({required this.query});

  @override
  List<Object> get props => [query];
}

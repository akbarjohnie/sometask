import 'package:equatable/equatable.dart';
import 'package:first_task/feature/domain/entities/results_enity.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';

abstract class SpecialistsState extends Equatable {
  const SpecialistsState();

  @override
  List<Object?> get props => [];
}

class SpecialistsEmpty extends SpecialistsState {
  @override
  List<Object?> get props => [];
}

class GetSpecLoading extends SpecialistsState {
  final List<SpecialistsEntity> getSpecList;
  final bool isFirstFetch;

  const GetSpecLoading(
    this.getSpecList, {
    this.isFirstFetch = false,
  });

  @override
  List<Object?> get props => [getSpecList];
}

class SpecialistsLoading extends SpecialistsState {
  final List<ResultsEntity> oldResultsList;
  final bool isFirstFetch;

  const SpecialistsLoading(
    this.oldResultsList, {
    this.isFirstFetch = false,
  });

  @override
  List<Object?> get props => [oldResultsList];
}

class SpecialistsLoaded extends SpecialistsState {
  final List<ResultsEntity> specialistsList;

  const SpecialistsLoaded(this.specialistsList);

  @override
  List<Object?> get props => [specialistsList];
}

class SpecialistsError extends SpecialistsState {
  final String message;

  const SpecialistsError({required this.message});

  @override
  List<Object?> get props => [message];
}

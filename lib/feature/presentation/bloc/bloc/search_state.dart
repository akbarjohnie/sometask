import 'package:equatable/equatable.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';

abstract class SpecialistsSearchState extends Equatable {
  const SpecialistsSearchState();

  @override
  List<Object> get props => [];
}

class SpecialistsSearchEmpty extends SpecialistsSearchState {}

class SpecialistsSearchLoading extends SpecialistsSearchState {}

class SpecialistsSearchLoaded extends SpecialistsSearchState {
  final List<SpecialistsEntity> specialists;

  const SpecialistsSearchLoaded({required this.specialists});

  @override
  List<Object> get props => [specialists];
}

class SpecialistsSearchError extends SpecialistsSearchState {
  final String message;

  const SpecialistsSearchError({required this.message});

  @override
  List<Object> get props => [message];
}

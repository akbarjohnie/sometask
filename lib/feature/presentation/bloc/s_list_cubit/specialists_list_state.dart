import 'package:equatable/equatable.dart';
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

class SpecialistsLoading extends SpecialistsState {
  final List<SpecialistsEntity> oldSpecialistsList;
  final bool isFirstFetch;

  const SpecialistsLoading(
    this.oldSpecialistsList, {
    this.isFirstFetch = false,
  });

  @override
  List<Object?> get props => [oldSpecialistsList];
}

class SpecialistsLoaded extends SpecialistsState {
  final List<SpecialistsEntity> specialistsList;

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

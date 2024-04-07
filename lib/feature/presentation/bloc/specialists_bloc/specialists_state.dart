part of 'specialists_bloc.dart';

abstract class SpecialistsState extends Equatable {
  const SpecialistsState();

  @override
  List<Object?> get props => [];
}

class InitialSpecialistsState extends SpecialistsState {
  const InitialSpecialistsState();
}

class EmptySpecialistsState extends SpecialistsState {
  const EmptySpecialistsState();
}

class LoadingSpecialistsState extends SpecialistsState {
  const LoadingSpecialistsState(
    this.oldResultsList, {
    this.isFirstFetch,
  });

  final bool? isFirstFetch;
  final List<ResultsEntity> oldResultsList;
}

class LoadedSpecialistsState extends SpecialistsState {
  const LoadedSpecialistsState({
    required this.allSpecialists,
  });

  final List<ResultsEntity> allSpecialists;

  @override
  List<Object?> get props => [allSpecialists];
}

class ErrorSpecialistsState extends SpecialistsState {
  const ErrorSpecialistsState({
    required this.message,
  });

  final String message;

  @override
  List<Object?> get props => [message];
}

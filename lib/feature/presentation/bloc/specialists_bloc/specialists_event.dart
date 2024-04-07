part of 'specialists_bloc.dart';

abstract class SpecialistsEvent extends Equatable {
  const SpecialistsEvent();

  @override
  List<Object?> get props => [];
}

class LoadSpecialistsEvent extends SpecialistsEvent {
  const LoadSpecialistsEvent();
}

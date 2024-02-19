import 'package:equatable/equatable.dart';

abstract class SpecialistsSearchEvent extends Equatable {
  const SpecialistsSearchEvent();

  @override
  List<Object> get props => [];
}

class SearchSpecialistsEvent extends SpecialistsSearchEvent {
  final String specialistsQuery;

  const SearchSpecialistsEvent(this.specialistsQuery);
}

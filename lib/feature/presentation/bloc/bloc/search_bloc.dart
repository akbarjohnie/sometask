import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:first_task/core/error/faliure.dart';
import 'package:first_task/feature/domain/usecases/search_specialist.dart';
import 'package:first_task/feature/presentation/bloc/bloc/search_event.dart';
import 'package:first_task/feature/presentation/bloc/bloc/search_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';
const CACHED_FAILURE_MESSAGE = 'Cache Failure';

class SpecialistsSearchBloc
    extends Bloc<SpecialistsSearchEvent, SpecialistsSearchState> {
  final SearchSpecialists searchSpecialists;

  SpecialistsSearchBloc({required this.searchSpecialists})
      : super(SpecialistsSearchEmpty()) {
    on<SearchSpecialistsEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    SearchSpecialistsEvent event,
    Emitter<SpecialistsSearchState> emit,
  ) async {
    emit(SpecialistsSearchLoading());
    final failureOrSpecialists = await searchSpecialists(
        SearchSpecialistsParams(query: event.specialistsQuery));
    emit(failureOrSpecialists.fold(
        (failure) =>
            SpecialistsSearchError(message: _mapFailureToMessage(failure)),
        (specialists) => SpecialistsSearchLoaded(specialists: specialists)));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHED_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}

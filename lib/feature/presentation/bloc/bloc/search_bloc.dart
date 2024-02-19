import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:first_task/core/error/faliure.dart';
import 'package:first_task/feature/presentation/bloc/bloc/search_event.dart';
import 'package:first_task/feature/presentation/bloc/bloc/search_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';
const CACHED_FAILURE_MESSAGE = 'Cache Failure';

class SpecialistsSearchBloc
    extends Bloc<SpecialistsSearchEvent, SpecialistsSearchState> {
  SpecialistsSearchBloc() : super(SpecialistsSearchEmpty()) {
    on<SearchSpecialistsEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    SearchSpecialistsEvent event,
    Emitter<SpecialistsSearchState> emit,
  ) async {
    emit(SpecialistsSearchLoading());
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

import 'package:flutter/foundation.dart' show debugPrint;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_task/feature/domain/entities/specialists_entity.dart';
import 'package:first_task/feature/domain/usecases/get_all_specialists.dart';
import 'package:first_task/core/error/faliure.dart';
import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_state.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';
const CACHED_FAILURE_MESSAGE = 'Cache Failure';

class SpecialistsListCubit extends Cubit<SpecialistsState> {
  final GetAllSpecialists getAllSpecialists;

  SpecialistsListCubit({
    required this.getAllSpecialists,
  }) : super(SpecialistsEmpty());

  int page = 1;

  void loadSpecialists() async {
    if (state is SpecialistsLoading) return;

    final currentState = state;

    var oldSpecialists = <SpecialistsEntity>[];
    if (currentState is SpecialistsLoaded) {
      oldSpecialists = currentState.specialistsList;
    }

    emit(SpecialistsLoading(oldSpecialists, isFirstFetch: page == 1));

    final failureOrSpecialists = await getAllSpecialists(
      PageSpecialistsParams(page: page),
    );

    failureOrSpecialists.fold(
        (error) => emit(
              SpecialistsError(
                message: _mapFailureToMessage(error),
              ),
            ), (specialist) {
      page++;
      final specialists = (state as SpecialistsLoading).oldSpecialistsList;

      specialists.addAll(specialist);

      debugPrint('List length: ${specialists.length.toString()}');
      emit(SpecialistsLoaded(specialists));
    });
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

import 'package:first_task/feature/data/repositories/mapper/results_entity_mapper.dart';
import 'package:first_task/feature/domain/entities/results_enity.dart';
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
    var oldResults = <ResultsEntity>[];

    if (currentState is GetSpecLoading) {
      oldResults = _getResults(currentState.getSpecList, page);
    }

    emit(SpecialistsLoading(oldResults, isFirstFetch: page == 1));

    final failureOrSpecialists = await getAllSpecialists(
      PageSpecialistsParams(page: page),
    );

    failureOrSpecialists.fold(
      (error) => emit(
        SpecialistsError(
          message: _mapFailureToMessage(error),
        ),
      ),
      (specialist) {
        debugPrint('Page $page');
        final resEntityList = (state as SpecialistsLoading).oldResultsList;

        if (specialist.first.results!.isNotEmpty) {
          resEntityList.addAll(_getResults(specialist, page));
          debugPrint('List length: ${resEntityList.length.toString()}');
          emit(SpecialistsLoaded(resEntityList));
          if (resEntityList != <ResultsEntity>[]) {
            page++;
          }
        }
        // else {
        emit(SpecialistsLoading(oldResults));
        // }
      },
    );
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

  List<ResultsEntity> _getResults(
    List<SpecialistsEntity> specList,
    int page,
  ) {
    List<ResultsEntity> data = [];
    if (specList[page - 1].results != []) {
      for (var element in specList[page - 1].results!) {
        data.add(resultsToEntity(element!));
      }
    }

    return data;
  }
}

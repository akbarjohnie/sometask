import 'dart:developer' show log;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_task/core/error/faliure.dart';
import 'package:first_task/core/error/failure_message.dart';
import 'package:first_task/feature/domain/entities/results_enity.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';
import 'package:first_task/feature/domain/usecases/get_all_specialists.dart';
import 'package:first_task/feature/data/repositories/mapper/results_entity_mapper.dart';

part 'specialists_event.dart';
part 'specialists_state.dart';

class SpecialistsBloc extends Bloc<SpecialistsEvent, SpecialistsState> {
  SpecialistsBloc({
    required this.getAllSpecialists,
  }) : super(const InitialSpecialistsState()) {
    on<LoadSpecialistsEvent>(_onLoadSpecialistsEvent);
  }

  final GetAllSpecialists getAllSpecialists;

  int page = 1;
  bool isFirstFetch = true;

  void loadSpecialistsEvent() {
    add(const LoadSpecialistsEvent());

    if (!isFirstFetch) {
      page++;
    }
  }

  final oldResult = <ResultsEntity>[];

  void _onLoadSpecialistsEvent(
    SpecialistsEvent event,
    Emitter<SpecialistsState> emit,
  ) async {
    emit(LoadingSpecialistsState(
      oldResult,
      isFirstFetch: isFirstFetch,
    ));

    log('oldResult is empty?-${oldResult.isNotEmpty}');

    isFirstFetch = false;

    final failureOrSpecialists =
        await getAllSpecialists.call(SpecialistsParams(page: page));

    emit(failureOrSpecialists.fold(
      (failure) => ErrorSpecialistsState(message: _failureToMessage(failure)),
      (specialists) {
        if (specialists[page - 1].results != null) {
          oldResult.addAll(_getResults(specialists, page)!);
        }
        return LoadedSpecialistsState(allSpecialists: oldResult);
      },
    ));
  }

  String _failureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return FailureMassage.serverFailureMessage;
      case CacheFailure:
        return FailureMassage.cachedFailureMessage;
      default:
        return 'Unexpected Error';
    }
  }

  List<ResultsEntity>? _getResults(
    List<SpecialistsEntity> specialistsList,
    int page,
  ) {
    List<ResultsEntity> data = [];
    if (specialistsList[page - 1].results != []) {
      for (var element in specialistsList[page - 1].results!) {
        data.add(resultsToEntity(element!));
      }
    }
    return data.isEmpty ? null : data;
  }
}

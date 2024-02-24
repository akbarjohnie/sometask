import 'dart:async';
import 'package:first_task/feature/presentation/view_model/scroll_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_cubit.dart';
import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_state.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';
import 'package:first_task/feature/data/repositories/mapper/results_entity_mapper.dart';
import 'package:first_task/feature/presentation/widgets/specialist_card_widget.dart';

class SpecialistsListWidget extends StatelessWidget {
  final scrollController = ScrollController();

  SpecialistsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setupScrollController(context, scrollController);
    return BlocBuilder<SpecialistsListCubit, SpecialistsState>(
      builder: (context, state) {
        List<SpecialistsEntity> specialists = [];
        bool isLoading = false;

        switch (state) {
          case SpecialistsLoading(isFirstFetch: true):
            return _loadingIndicator();
          case SpecialistsLoading(isFirstFetch: false):
            specialists = state.oldSpecialistsList;
            isLoading = true;
          case SpecialistsLoaded():
            specialists = state.specialistsList;
          case SpecialistsEmpty():
            return _loadingIndicator();
          case SpecialistsError():
            return Text(
              context.read<SpecialistsError>().message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            );
        }

        var page = context.read<SpecialistsListCubit>().page - 2;
        final length = specialists[page].total;

        if (specialists[page].results!.isNotEmpty) {
          return ListView.separated(
            controller: scrollController,
            itemCount: length,
            itemBuilder: (context, index) {
              var info = specialists[page].results;
              if (info != null) {
                if (info[index] != null && index < length) {
                  debugPrint('indexCard $index');
                  return SpecialistsCardWidget(
                    specialist: resultsToEntity(info[index]!),
                  );
                }
              }
              Timer(const Duration(milliseconds: 30), () {
                scrollController.animateTo(
                  scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              });
              return _loadingIndicator();
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey[400],
              );
            },
          );
        }
        return _loadingIndicator();
      },
    );
  }

  Widget _loadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

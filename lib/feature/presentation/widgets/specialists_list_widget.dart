import 'dart:async';
import 'package:first_task/feature/data/repositories/mapper/results_entity_mapper.dart';
import 'package:first_task/feature/presentation/widgets/specialist_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_cubit.dart';
import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_state.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';

class SpecialistsListWidget extends StatelessWidget {
  final scrollController = ScrollController();

  SpecialistsListWidget({Key? key}) : super(key: key);

  void setupScrollController(BuildContext context) {
    scrollController.addListener(() {
      debugPrint(scrollController.position.pixels.toString());
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          scrollController.position.atEdge) {
        context.read<SpecialistsListCubit>().loadSpecialists();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    return BlocBuilder<SpecialistsListCubit, SpecialistsState>(
      builder: (context, state) {
        List<SpecialistsEntity> specialists = [];
        bool isLoading = false;

        if (state is SpecialistsLoading && state.isFirstFetch) {
          return _loadingIndicator();
        } else if (state is SpecialistsLoading) {
          specialists = state.oldSpecialistsList;
          isLoading = true;
        } else if (state is SpecialistsLoaded) {
          specialists = state.specialistsList;
        } else if (state is SpecialistsError) {
          return Text(
            state.message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          );
        }

        var page = 0;
        final length = specialists[page].total;

        return ListView.separated(
          controller: scrollController,
          itemCount: length,
          itemBuilder: (context, index) {
            var info = specialists[page].results;

            if (info != null) {
              if (info[index] != null && index < length - 1) {
                debugPrint('indexCard $index');
                return SpecialistsCardWidget(
                  specialist: resultsToEntity(info[index]!),
                );
              }
            }

            debugPrint('last element is on index $index');
            debugPrint(info?[3].toString());
            Timer(const Duration(milliseconds: 300), () {
              scrollController.animateTo(
                scrollController.position.maxScrollExtent,
                duration: const Duration(seconds: 1),
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

import 'dart:async';
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
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          scrollController.position.atEdge) {
        context.read<SpecialistsListCubit>().loadSpecialists();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // setupScrollController(context);
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
        var page = context.read<SpecialistsListCubit>().page - 2;
        final length = specialists[page].results?.length ?? 0;

        return ListView.separated(
          // controller: scrollController,
          itemCount: length,
          itemBuilder: (context, index) {
            debugPrint(
                'length ${specialists[page].results?.length} index $index');
            if (index < specialists[page].results!.length - 1) {
              return SpecialistsCardWidget(
                specialist: specialists[page],
                index: index,
              );
            } else {
              Timer(
                const Duration(milliseconds: 30),
                () {
                  // scrollController.jumpTo(
                  //   scrollController.position.maxScrollExtent,
                  // );
                },
              );

              return _loadingIndicator();
            }
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

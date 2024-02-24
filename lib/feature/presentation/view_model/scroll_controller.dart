import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void setupScrollController(
  BuildContext context,
  ScrollController scrollController,
) {
  scrollController.addListener(
    () {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          scrollController.position.atEdge) {
        context.read<SpecialistsListCubit>().loadSpecialists();
      }
    },
  );
}

import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_cubit.dart';
import 'package:flutter/material.dart';

abstract interface class ISpecialistsPresenter {
  void init();
  void dispose();
}

class SpecialistsPresenterImpl implements ISpecialistsPresenter {
  final SpecialistsListCubit cubit;
  late final ScrollController scrollController;

  SpecialistsPresenterImpl({required this.cubit});

  @override
  void init() {
    scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
  }

  void _scrollListener() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        scrollController.position.atEdge) {
      cubit.loadSpecialists();
    }
  }
}

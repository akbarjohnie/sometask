import 'package:flutter/material.dart';

import 'package:first_task/feature/presentation/bloc/specialists_bloc/specialists_bloc.dart';

abstract interface class ISpecialistsPresenter {
  void init();
  void dispose();
}

class SpecialistsPresenterImpl implements ISpecialistsPresenter {
  final SpecialistsBloc bloc;
  late final ScrollController scrollController;

  SpecialistsPresenterImpl({required this.bloc});

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
      bloc.loadSpecialistsEvent();
    }
  }
}

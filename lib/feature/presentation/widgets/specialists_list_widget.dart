import 'package:first_task/feature/domain/entities/results_enity.dart';
import 'package:first_task/feature/presentation/pages/vm/specialists_page_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_cubit.dart';
import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_state.dart';
import 'package:first_task/feature/presentation/widgets/specialist_card_widget.dart';

class SpecialistsListWidget extends StatelessWidget {
  const SpecialistsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<SpecialistsPresenterImpl>();
    return BlocBuilder<SpecialistsListCubit, SpecialistsState>(
      builder: (context, state) {
        List<ResultsEntity> resData = [];
        // bool isLoading = false;

        switch (state) {
          case SpecialistsLoading(isFirstFetch: true):
            return _loadingIndicator();
          case SpecialistsLoading(isFirstFetch: false):
            resData += state.oldResultsList;
          // isLoading = true;
          case SpecialistsLoaded():
            resData += state.specialistsList;
          case SpecialistsEmpty():
            return _loadingIndicator();
          case SpecialistsError():
            return Text(
              state.message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            );
        }

        final length = resData.length;

        // TODO
        if (resData.isNotEmpty) {
          return ListView.separated(
            controller: presenter.scrollController,
            itemCount: length,
            itemBuilder: (_, index) {
              debugPrint('IndexCard $index');
              return SpecialistsCardWidget(
                specialist: resData[index],
              );
            },
            separatorBuilder: (_, __) => Divider(color: Colors.grey[400]),
          );
        }
        debugPrint('Something went wrog...');
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

import 'dart:developer' show log;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_task/feature/presentation/pages/vm/specialists_page_presenter.dart';
import 'package:first_task/feature/presentation/widgets/specialist_card_widget.dart';
import 'package:first_task/feature/presentation/bloc/specialists_bloc/specialists_bloc.dart';

class SpecialistsListWidget extends StatelessWidget {
  const SpecialistsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = context.read<SpecialistsPresenterImpl>();

    return BlocBuilder<SpecialistsBloc, SpecialistsState>(
      builder: (context, state) => switch (state) {
        InitialSpecialistsState() ||
        EmptySpecialistsState() ||
        LoadingSpecialistsState() =>
          _loadingIndicator(),
        LoadedSpecialistsState() => ListView.separated(
            controller: presenter.scrollController,
            itemCount: state.allSpecialists.length,
            itemBuilder: (_, index) {
              log('IndexCard $index');
              return SpecialistsCardWidget(
                specialist: state.allSpecialists[index],
              );
            },
            separatorBuilder: (_, __) => Divider(color: Colors.grey[400]),
          ),
        ErrorSpecialistsState() => Text(
            state.message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        _ => const SizedBox.shrink(),
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

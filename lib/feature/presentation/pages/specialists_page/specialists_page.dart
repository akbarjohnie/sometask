import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:first_task/feature/presentation/widgets/specialists_list_widget.dart';
import 'package:first_task/feature/presentation/bloc/s_list_cubit/specialists_list_cubit.dart';
import 'package:first_task/feature/presentation/pages/vm/specialists_page_presenter.dart';

class SpecialistsPage extends StatelessWidget {
  const SpecialistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Specialists'),
        centerTitle: true,
      ),
      body: Provider(
        create: (context) => SpecialistsPresenterImpl(
          cubit: context.read<SpecialistsListCubit>(),
        )..init(),
        dispose: (_, presenter) => presenter.dispose(),
        child: const SpecialistsListWidget(),
      ),
    );
  }
}

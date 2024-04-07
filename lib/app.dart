import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_task/di/service_locator.dart';
import 'package:first_task/feature/presentation/pages/specialists_page/specialists_page.dart';
import 'package:first_task/common/app_colors.dart';
import 'package:first_task/feature/presentation/bloc/specialists_bloc/specialists_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SpecialistsBloc>(
          create: (context) => sl<SpecialistsBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark().copyWith(
            background: AppColors.mainBackground,
          ),
        ),
        home: const SpecialistsPage(),
      ),
    );
  }
}

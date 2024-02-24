import 'package:flutter/material.dart';

import 'package:first_task/feature/presentation/widgets/specialists_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Specialists'),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       // TODO
        //     },
        //     icon: const Icon(Icons.search),
        //     color: Colors.white,
        //   ),
        // ],
      ),
      body: SpecialistsListWidget(),
    );
  }
}

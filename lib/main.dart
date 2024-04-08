import 'package:flutter/material.dart';

import 'package:first_task/di/service_locator.dart' as di;
import 'package:first_task/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

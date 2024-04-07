import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';

import 'package:first_task/di/service_locator.dart' as di;
import 'package:first_task/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

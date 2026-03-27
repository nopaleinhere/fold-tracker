import 'package:flutter/material.dart';
import 'package:mobile/app/app.dart';
import 'package:mobile/di/injection.dart';

void bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();

  runApp(const App());
}

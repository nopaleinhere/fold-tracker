import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:mobile/app/app.dart';
import 'package:mobile/di/injection.dart';
import 'package:shared/constants/hive_boxes.dart';

void bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox(HiveBoxes.habit);

  await initDI();

  runApp(ProviderScope(child: const App()));
}

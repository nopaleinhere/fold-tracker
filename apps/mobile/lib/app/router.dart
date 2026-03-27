import 'package:core/navigation/app_route.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final sl = GetIt.instance;

final router = GoRouter(
  routes: sl.getAll<AppRoute>().expand((route) => route.routes).toList(),
);

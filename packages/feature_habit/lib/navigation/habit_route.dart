import 'package:core/navigation/app_route.dart';
import 'package:core/navigation/path_routes.dart';
import 'package:feature_habit/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class HabitRoute implements AppRoute {
  @override
  List<GoRoute> get routes => [
    GoRoute(
      path: PathRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
  ];
}

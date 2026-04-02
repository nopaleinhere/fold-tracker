import 'package:core_ui/theme/ft_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:mobile/app/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router, theme: FtAppTheme.light);
  }
}

import 'package:core_ui/theme/ft_theme.dart';
import 'package:core_ui/theme/ft_typography.dart';
import 'package:flutter/material.dart';
import 'package:mobile/app/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = FtTypography().createTextTheme(
      context,
      "Poppins",
      "Poppins",
    );

    FtTheme theme = FtTheme(textTheme);

    return MaterialApp.router(
      routerConfig: router,
      theme: theme.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:core_ui/components/base_screen.dart';
import 'package:core_ui/components/custom_app_bar.dart';
import 'package:core_ui/theme/ft_size.dart';
import 'package:feature_habit/presentation/screens/pages/favorite_action_page.dart';
import 'package:feature_habit/presentation/screens/pages/recent_action_page.dart';
import 'package:feature_habit/presentation/screens/pages/timer_page.dart';
import 'package:feature_habit/presentation/providers/home/home_provider.dart';
import 'package:feature_habit/presentation/widgets/tab_bar.dart';
import 'package:flutter/material.dart' hide TabBar;
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static const List<Widget> _tabs = [
    TimerPage(),
    RecentActionPage(),
    FavoriteActionPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);
    final notifier = ref.read(homeProvider.notifier);

    return BaseScreen(
      appBar: CustomAppBar(
        name: "Naufal Ulwan",
        bottomHeight: FtSize.d44,
        bottom: TabBar(
          selectedIndex: state.selectedTab,
          height: FtSize.d44,
          onTabChanged: (index) => notifier.changeTab(index),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
      child: IndexedStack(index: state.selectedTab, children: _tabs),
    );
  }
}

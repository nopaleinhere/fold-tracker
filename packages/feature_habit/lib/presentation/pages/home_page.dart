import 'package:feature_habit/presentation/pages/home_tabs/favorite_action_page.dart';
import 'package:feature_habit/presentation/pages/home_tabs/recent_action_page.dart';
import 'package:feature_habit/presentation/pages/home_tabs/timer_page.dart';
import 'package:feature_habit/presentation/providers/home/home_provider.dart';
import 'package:feature_habit/presentation/widgets/h_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static const List<Widget> _tabs = [
    TimerPage(),
    RecentActionPage(),
    FavoriteActionPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);
    final notifier = ref.read(homeProvider.notifier);

    return Scaffold(
      appBar: HAppBar(
        selectedIndex: state.selectedTab,
        onTabChanged: notifier.changeTab,
      ),
      body: IndexedStack(index: state.selectedTab, children: _tabs),
    );
  }
}

import 'package:core/base/base_state.dart';
import 'package:core/extensions/base_state_extension.dart';
import 'package:core_ui/components/base_screen.dart';
import 'package:feature_habit/presentation/providers/home/home_provider.dart';
import 'package:feature_habit/presentation/widgets/h_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);
    final notifier = ref.read(homeProvider.notifier);

    useEffect(() {
      return null;
    }, const []);

    return BaseScreen(
      isLoading: state.dataState.isLoading,
      appBar: HAppBar(
        selectedIndex: state.selectedTab,
        onTabChanged: notifier.changeTab,
      ),
      child: state.dataState.when(
        initial: () => const SizedBox(),
        loading: () => const SizedBox(),
        success: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final habit = data[index];

              return ListTile(
                title: Text(habit.title),
                leading: habit.isCompleted
                    ? const Icon(Icons.check_circle, color: Colors.green)
                    : const Icon(Icons.circle_outlined, color: Colors.grey),
              );
            },
          );
        },
        empty: () => const Center(child: Text("No Habit")),
        error: (message) => Center(child: Text(message)),
      ),
    );
  }
}

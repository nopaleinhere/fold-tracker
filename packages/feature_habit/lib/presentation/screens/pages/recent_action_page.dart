import 'package:core/base/base_state.dart';
import 'package:feature_habit/presentation/providers/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/constants/numbers.dart';

class RecentActionPage extends ConsumerWidget {
  const RecentActionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);

    return state.dataState.when(
      initial: () => const SizedBox(),
      loading: () => const Center(child: CircularProgressIndicator()),
      empty: () => const Center(child: Text("No recent actions")),
      error: (message) => Center(child: Text(message)),
      success: (habits) => ListView.separated(
        padding: const EdgeInsets.all(Numbers.sixteenPointZero),
        itemCount: habits.length,
        separatorBuilder: (_, _) => const Divider(),
        itemBuilder: (context, index) {
          final habit = habits[index];
          return ListTile(
            leading: const Icon(Icons.history),
            title: Text(
              habit.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Text(
              habit.description,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: const Icon(Icons.chevron_right),
          );
        },
      ),
    );
  }
}

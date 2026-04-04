import 'package:core/base/base_state.dart';
import 'package:core_ui/theme/ft_size.dart';
import 'package:feature_habit/presentation/providers/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/constants/numbers.dart';

class FavoriteActionPage extends ConsumerWidget {
  const FavoriteActionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);

    return state.dataState.when(
      initial: () => const SizedBox(),
      loading: () => const Center(child: CircularProgressIndicator()),
      empty: () => const Center(child: Text("No favorite actions")),
      error: (message) => Center(child: Text(message)),
      success: (habits) {
        final favorites = habits.where((h) => h.isFavorite).toList();

        if (favorites.isEmpty) {
          return const Center(child: Text("No favorite actions"));
        }

        return GridView.builder(
          padding: const EdgeInsets.all(FtSize.d8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Numbers.two,
            crossAxisSpacing: Numbers.twelvePointZero,
            mainAxisSpacing: Numbers.twelvePointZero,
            childAspectRatio: Numbers.onePointTwo,
          ),
          itemCount: favorites.length,
          itemBuilder: (context, index) {
            final habit = favorites[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(Numbers.twelvePointZero),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    const Spacer(),
                    Text(
                      habit.title,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      habit.description,
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: Numbers.two,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

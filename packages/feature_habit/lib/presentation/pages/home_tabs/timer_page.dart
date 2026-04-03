import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimerPage extends HookConsumerWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seconds = useState(0);
    final isRunning = useState(false);

    useEffect(() {
      if (!isRunning.value) return null;

      final timer = Timer.periodic(const Duration(seconds: 1), (_) {
        seconds.value++;
      });

      return timer.cancel; // cleanup
    }, [isRunning.value]);

    final formatted = Duration(
      seconds: seconds.value,
    ).toString().split('.').first.padLeft(8, '0');

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(formatted, style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => isRunning.value = !isRunning.value,
              child: Text(isRunning.value ? "Pause" : "Start"),
            ),
            const SizedBox(width: 16),
            OutlinedButton(
              onPressed: () {
                isRunning.value = false;
                seconds.value = 0;
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ],
    );
  }
}

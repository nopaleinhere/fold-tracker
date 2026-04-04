import 'dart:async';

import 'package:core/extensions/boolean_extensions.dart';
import 'package:core_ui/theme/ft_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared/constants/numbers.dart';

class TimerPage extends HookConsumerWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seconds = useState(Numbers.zero);
    final isRunning = useState(false);

    useEffect(() {
      if (isRunning.value.not) return null;

      final timer = Timer.periodic(const Duration(seconds: Numbers.one), (_) {
        seconds.value++;
      });

      return timer.cancel;
    }, [isRunning.value]);

    final formatted = Duration(
      seconds: seconds.value,
    ).toString().split('.').first.padLeft(Numbers.eight, '0');

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(formatted, style: Theme.of(context).textTheme.headlineLarge),
        const SizedBox(height: FtSize.d32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => isRunning.value = !isRunning.value,
              child: Text(isRunning.value ? "Pause" : "Start"),
            ),
            const SizedBox(width: FtSize.d16),
            OutlinedButton(
              onPressed: () {
                isRunning.value = false;
                seconds.value = Numbers.zero;
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ],
    );
  }
}

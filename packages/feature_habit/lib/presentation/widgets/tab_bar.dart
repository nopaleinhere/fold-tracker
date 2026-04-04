import 'package:core_ui/theme/ft_size.dart';
import 'package:core_ui/theme/ft_spacing.dart';
import 'package:flutter/material.dart';
import 'package:shared/constants/numbers.dart';

class TabBar extends StatelessWidget {
  final int selectedIndex;
  final double height;
  final Function(int) onTabChanged;

  const TabBar({
    super.key,
    required this.selectedIndex,
    required this.height,
    required this.onTabChanged,
  });

  List<Widget> get tabList => [
    _TabItem(
      title: "Timer",
      index: Numbers.zero,
      selectedIndex: selectedIndex,
      onTap: onTabChanged,
    ),
    _TabItem(
      title: "Recent Action",
      index: Numbers.one,
      selectedIndex: selectedIndex,
      onTap: onTabChanged,
    ),
    _TabItem(
      title: "Favorite Action",
      index: Numbers.two,
      selectedIndex: selectedIndex,
      onTap: onTabChanged,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      color: colors.secondary,
      height: height,
      child: Row(children: tabList),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String title;
  final int index;
  final int selectedIndex;
  final Function(int) onTap;

  const _TabItem({
    required this.title,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    final isSelected = index == selectedIndex;

    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onTap(index),
          splashColor: colors.tertiary.withValues(alpha: Numbers.pointTwo),
          highlightColor: colors.tertiary.withValues(alpha: Numbers.pointTwo),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: isSelected
                    ? textTheme.labelSmall?.copyWith(
                        color: colors.tertiaryContainer,
                        fontWeight: FontWeight.w600,
                      )
                    : textTheme.labelSmall?.copyWith(
                        color: colors.onSecondary,
                        fontWeight: FontWeight.normal,
                      ),
              ),
              const SizedBox(height: FtSpacing.sm3),
              AnimatedContainer(
                duration: const Duration(milliseconds: Numbers.twoHundred),
                height: FtSize.d2,
                color: isSelected
                    ? colors.tertiaryContainer
                    : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:core_ui/theme/ft_colors.dart';
import 'package:core_ui/theme/ft_radius.dart';
import 'package:core_ui/theme/ft_size.dart';
import 'package:core_ui/theme/ft_spacing.dart';
import 'package:flutter/material.dart';
import 'package:shared/constants/numbers.dart';

class HAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int selectedIndex;
  final Function(int) onTabChanged;

  const HAppBar({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  @override
  Size get preferredSize => const Size.fromHeight(FtSize.d105);

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      decoration: const BoxDecoration(color: FtColors.primary),
      child: Column(
        children: [
          SizedBox(height: statusBarHeight),
          _Header(),
          const SizedBox(height: FtSpacing.md),
          _Tabs(selectedIndex: selectedIndex, onTabChanged: onTabChanged),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: FtSpacing.md,
        left: FtSpacing.md,
        right: FtSpacing.md,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: FtRadius.xl,
            backgroundColor: Colors.white,
          ),

          const SizedBox(width: FtSpacing.sm),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: Theme.of(
                  context,
                ).textTheme.labelLarge?.copyWith(color: Colors.white),
              ),
              Text(
                "Naufal",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.white),
              ),
            ],
          ),

          const Spacer(),
          const Icon(Icons.notifications_none, color: Colors.white),
        ],
      ),
    );
  }
}

class _Tabs extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChanged;

  const _Tabs({required this.selectedIndex, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FtColors.secondary,
      padding: const EdgeInsets.only(top: FtSpacing.sm),
      child: Row(
        children: [
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
        ],
      ),
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
    final isSelected = index == selectedIndex;

    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        child: Column(
          children: [
            Text(
              title,
              style: isSelected
                  ? Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: FtColors.tertiary)
                  : Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.white),
            ),

            const SizedBox(height: FtSpacing.sm),

            AnimatedContainer(
              duration: const Duration(milliseconds: Numbers.twoHundred),
              height: FtSize.d2,
              color: isSelected ? FtColors.tertiary : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}

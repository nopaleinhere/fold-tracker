import 'package:core/di/service_locator.dart';
import 'package:core/services/connectivity_service.dart';
import 'package:core_ui/theme/ft_radius.dart';
import 'package:core_ui/theme/ft_size.dart';
import 'package:core_ui/theme/ft_spacing.dart';
import 'package:flutter/material.dart';

class _PreferredAppBarSize extends Size {
  _PreferredAppBarSize(this.appBarHeight, this.bottomHeight)
    : super.fromHeight((appBarHeight ?? kToolbarHeight) + (bottomHeight ?? 0));

  final double? appBarHeight;
  final double? bottomHeight;
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final Widget? bottom;
  final double appBarHeight;
  final double? bottomHeight;

  CustomAppBar({
    super.key,
    required this.name,
    this.bottom,
    this.appBarHeight = FtSize.d68,
    this.bottomHeight,
  }) : preferredSize = _PreferredAppBarSize(appBarHeight, bottomHeight);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: colors.primary,
        boxShadow: [
          BoxShadow(
            color: colors.shadow.withValues(alpha: 0.15),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          children: [
            _Header(
              name: name,
              leading: InkWell(
                onTap: () {},
                child: Icon(Icons.notifications_none, color: colors.onPrimary),
              ),
            ),
            bottom ?? const SizedBox(),
            // _Tabs(
            //   selectedIndex: selectedIndex,
            //   height: bottomBarHeight,
            //   onTabChanged: onTabChanged,
            // ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String name;
  final Widget leading;

  const _Header({required this.name, this.leading = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    final connectivity = sl<ConnectivityService>();

    return Padding(
      padding: const EdgeInsets.all(FtSpacing.md),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(radius: FtRadius.xl, backgroundColor: Colors.white),
              StreamBuilder<bool>(
                stream: connectivity.onConnectivityChanged,
                builder: (context, snapshot) {
                  final isConnected = snapshot.data ?? true;

                  return Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: isConnected
                            ? colors.inversePrimary
                            : colors.onErrorContainer,
                        shape: BoxShape.circle,
                        border: Border.all(color: colors.primary, width: 1.5),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),

          const SizedBox(width: FtSpacing.sm),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: textTheme.labelSmall?.copyWith(
                  color: colors.onPrimary,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                name,
                style: textTheme.bodySmall?.copyWith(color: colors.onPrimary),
              ),
            ],
          ),

          const Spacer(),
          leading,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class BaseScreen extends ConsumerWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final bool isLoading;
  final bool safeArea;
  final Color? backgroundColor;

  const BaseScreen({
    super.key,
    required this.child,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.isLoading = false,
    this.safeArea = true,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: backgroundColor,
            appBar: appBar,
            floatingActionButton: floatingActionButton,
            bottomNavigationBar: bottomNavigationBar,
            resizeToAvoidBottomInset: true,
            body: safeArea ? SafeArea(child: child) : child,
          ),
          if (isLoading) const _LoadingOverlay(),
        ],
      ),
    );
  }
}

class _LoadingOverlay extends StatelessWidget {
  const _LoadingOverlay();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: Colors.black26,
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

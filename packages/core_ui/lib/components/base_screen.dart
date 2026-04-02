import 'package:core/extensions/boolean_extensions.dart';
import 'package:flutter/material.dart';

import 'package:core/services/connectivity_service.dart';
import 'package:core/di/service_locator.dart';
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
    final connectivity = sl<ConnectivityService>();

    return StreamBuilder<bool>(
      stream: connectivity.onConnectivityChanged,
      builder: (context, snapshot) {
        final isConnected = snapshot.data ?? true;

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
                body: Column(
                  children: [
                    /// Main Content
                    Expanded(child: safeArea ? SafeArea(child: child) : child),

                    /// Connectivity Banner Bottom
                    _ConnectivityBanner(isConnected: isConnected),
                  ],
                ),
              ),

              /// Loading Overlay (Full Screen)
              if (isLoading) const _LoadingOverlay(),
            ],
          ),
        );
      },
    );
  }
}

class _ConnectivityBanner extends StatelessWidget {
  final bool isConnected;

  const _ConnectivityBanner({required this.isConnected});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isConnected ? 0 : 40,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.red,
        boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black26)],
      ),
      child: const SafeArea(
        top: false,
        child: Center(
          child: Text(
            "No Internet Connection",
            style: TextStyle(color: Colors.white),
          ),
        ),
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

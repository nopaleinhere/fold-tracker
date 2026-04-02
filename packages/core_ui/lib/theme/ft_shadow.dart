import 'package:flutter/material.dart';

class FtShadow {
  static List<BoxShadow> card = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.08),
      blurRadius: 20,
      offset: Offset(0, 10),
    ),
  ];
}

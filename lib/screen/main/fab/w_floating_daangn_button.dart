import 'package:fast_app_base/common/cli_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FloatingDaangnButton extends ConsumerWidget {
  FloatingDaangnButton({super.key});

  final duration = 300.ms;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpanded = true;
    return Stack(
      children: [
        AnimatedContainer(
          duration: duration,
          color: isExpanded ? Colors.black.withOpacity(0.4) : Colors.transparent,
        ),
      ],
    );
  }
}

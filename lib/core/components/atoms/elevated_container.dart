import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../design_system/app_colors.dart';
import '../../../design_system/shadows.dart';

class ElevatedContainer extends StatelessWidget {
  const ElevatedContainer({
    Key? key,
    bool isElevated = true,
    bool withBorder = false,
    required this.child,
  })  : _isElevated = isElevated,
        _withBorder = withBorder,
        super(key: key);

  final bool _isElevated;
  final bool _withBorder;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.all(4),
      duration: const Duration(milliseconds: 150),
      decoration: BoxDecoration(
        color: AppColors.grey,
        boxShadow: _isElevated ? Shadows.elevated : Shadows.depressed,
      ),
      child: DottedBorder(
        color:
            _withBorder && _isElevated ? AppColors.black : Colors.transparent,
        dashPattern: const [2],
        child: child,
      ),
    );
  }
}

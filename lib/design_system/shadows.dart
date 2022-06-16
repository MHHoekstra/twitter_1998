import 'package:flutter/material.dart';

import 'app_colors.dart';

class Shadows {
  const Shadows._();

  static const elevated = [
    BoxShadow(color: AppColors.black, offset: Offset(2, 2)),
    BoxShadow(color: AppColors.darkGrey, offset: Offset(1, 1)),
    BoxShadow(color: AppColors.lightGrey, offset: Offset(-1, -1)),
    BoxShadow(color: AppColors.white, offset: Offset(-2, -2)),
  ];

  static const depressed = [
    BoxShadow(color: AppColors.black, offset: Offset(-2, -2)),
    BoxShadow(color: AppColors.darkGrey, offset: Offset(-1, -1)),
    BoxShadow(color: AppColors.lightGrey, offset: Offset(1, 1)),
    BoxShadow(color: AppColors.white, offset: Offset(2, 2)),
  ];
}

import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

import '../../../design_system/app_colors.dart';
import 'pressable.dart';

class MobileProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MobileProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(color: AppColors.black, offset: Offset(0, 1))],
        color: AppColors.grey,
        border: Border(
          bottom: BorderSide(
            color: AppColors.darkGrey,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Pressable(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Pixel.close,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

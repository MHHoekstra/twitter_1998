import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

import '../../../design_system/app_colors.dart';
import 'pressable.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar(
      {Key? key, required this.onItemPressed, required this.currentIndex})
      : super(key: key);

  final Function(int) onItemPressed;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: AppColors.grey,
        border: Border(
          top: BorderSide(
            style: BorderStyle.solid,
            width: 2,
            color: AppColors.lightGrey,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.white,
            offset: Offset(0, -1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Pressable(
            onTap: () => onItemPressed(0),
            child: Icon(
              Pixel.home,
              color: currentIndex == 0 ? Colors.deepPurple : null,
            ),
          ),
          Pressable(
            onTap: () => onItemPressed(1),
            child: Icon(
              Pixel.search,
              color: currentIndex == 1 ? Colors.deepPurple : null,
            ),
          ),
          Pressable(
            onTap: () => onItemPressed(2),
            child: Icon(
              Pixel.notification,
              color: currentIndex == 2 ? Colors.deepPurple : null,
            ),
          ),
          Pressable(
            onTap: () => onItemPressed(3),
            child: Icon(
              Pixel.mail,
              color: currentIndex == 3 ? Colors.deepPurple : null,
            ),
          ),
        ],
      ),
    );
  }
}

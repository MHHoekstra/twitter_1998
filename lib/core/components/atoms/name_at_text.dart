import 'package:flutter/material.dart';

import '../../../design_system/app_colors.dart';

class NameAtText extends StatelessWidget {
  const NameAtText({
    Key? key,
    required this.name,
    required this.at,
    this.atHorizontal = true,
  }) : super(key: key);

  final String name;
  final String at;
  final bool atHorizontal;
  final nameStyle = const TextStyle(fontSize: 16);
  final atStyle = const TextStyle(fontSize: 16, color: AppColors.darkGrey);

  @override
  Widget build(BuildContext context) {
    if (atHorizontal) {
      return Row(
        children: [
          Flexible(
              child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: nameStyle,
          )),
          const SizedBox(width: 8),
          Text(
            "@$at",
            maxLines: 1,
            style: atStyle,
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              name,
              style: nameStyle,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              "@$at",
              style: atStyle,
            ),
          ),
        ],
      );
    }
  }
}

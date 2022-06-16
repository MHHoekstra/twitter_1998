import 'package:flutter/material.dart';

import '../../../design_system/app_colors.dart';

class TrendingTile extends StatelessWidget {
  const TrendingTile(
      {Key? key,
      required this.topic,
      required this.trend,
      required this.numberOfTweets})
      : super(key: key);

  final String topic;
  final String trend;
  final String numberOfTweets;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          topic,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: AppColors.darkGrey),
        ),
        Text(
          trend,
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          numberOfTweets,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: AppColors.darkGrey),
        ),
      ],
    );
  }
}

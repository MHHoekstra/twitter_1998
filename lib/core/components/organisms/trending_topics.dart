import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../../design_system/app_colors.dart';
import '../atoms/elevated_container.dart';
import '../atoms/trending_tile.dart';

class TrendingTopics extends StatelessWidget {
  const TrendingTopics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedContainer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Trending for you",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: AppColors.black,
                  ),
            ),
          ),
          ...List.generate(
            20,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: TrendingTile(
                topic: lorem(paragraphs: 1, words: 2),
                trend: lorem(paragraphs: 1, words: 2),
                numberOfTweets: lorem(paragraphs: 1, words: 2),
              ),
            ),
          )
        ],
      ),
    );
  }
}

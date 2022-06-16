import 'package:flutter/material.dart';

import '../organisms/trending_topics.dart';

class TrendingMobileTemplate extends StatelessWidget {
  const TrendingMobileTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: TrendingTopics(),
        ),
      ),
    );
  }
}

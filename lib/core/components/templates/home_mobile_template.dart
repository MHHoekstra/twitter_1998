import 'package:flutter/material.dart';

import '../organisms/feed.dart';

class HomeMobileTemplate extends StatelessWidget {
  const HomeMobileTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Feed(),
      ),
    );
  }
}

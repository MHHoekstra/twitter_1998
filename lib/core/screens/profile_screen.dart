import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../constants.dart';
import '../components/molecules/mobile_profile_app_bar.dart';
import '../components/molecules/tweet.dart';
import '../components/organisms/profile_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const screenRoute = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MobileProfileAppBar(),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: ProfileInfo(),
          ),
          ...List.generate(
            20,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Tweet(
                text: lorem(paragraphs: 1, words: 20),
                at: lorem(paragraphs: 1, words: 1),
                name: lorem(paragraphs: 1, words: 2),
                liked: false,
                retweeted: false,
                onCommentTap: () {},
                onRetweetTap: () {},
                onLikeTap: () {},
                onShareTap: () {},
                photoUrl: profilePicture,
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import '../../../constants.dart';
import '../molecules/new_tweet_input.dart';
import '../molecules/tweet.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: NewTweetInput(
            onChanged: (_) {},
            onSubmitted: (_) {},
            onTweetTapped: () {},
            photoUrl: profilePicture,
          ),
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
              photoUrl: randomProfilePicture,
            ),
          ),
        )
      ],
    );
  }
}

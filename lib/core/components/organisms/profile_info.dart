import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:pixelarticons/pixel.dart';

import '../../../constants.dart';
import '../../../design_system/app_colors.dart';
import '../atoms/elevated_container.dart';
import '../atoms/name_at_text.dart';
import '../molecules/pressable.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.network(
                  profilePicture,
                  height: 120,
                  width: 120,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Pressable(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 2.0,
                    ),
                    child: Text(
                      'Edit profile',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: SizedBox(
              height: 40,
              child: NameAtText(
                name: lorem(paragraphs: 1, words: 2),
                at: lorem(paragraphs: 1, words: 1),
                atHorizontal: false,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              lorem(
                paragraphs: 1,
                words: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                const Icon(Pixel.pin, color: AppColors.darkGrey),
                Text(
                  lorem(paragraphs: 1, words: 2),
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: AppColors.darkGrey,
                      ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                const Icon(Pixel.calendar, color: AppColors.darkGrey),
                Text(
                  lorem(paragraphs: 1, words: 2),
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: AppColors.darkGrey,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  "182",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Following",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: AppColors.darkGrey,
                      ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Text(
                  "182",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Followers",
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: AppColors.darkGrey,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Pressable(
                    onTap: () {},
                    child: const Center(child: Text('Tweets')),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Pressable(
                    onTap: () {},
                    child: const Center(child: Text('Tweets and answers')),
                  ),
                ),
                Expanded(
                  child: Pressable(
                    onTap: () {},
                    child: const Center(child: Text('Media')),
                  ),
                ),
                Expanded(
                  child: Pressable(
                    onTap: () {},
                    child: const Center(child: Text('Likes')),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

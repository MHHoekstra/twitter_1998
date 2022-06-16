import 'package:flutter/material.dart';

import '../atoms/elevated_container.dart';
import 'pressable.dart';

class NewTweetInput extends StatelessWidget {
  final String photoUrl;

  const NewTweetInput({
    Key? key,
    required this.photoUrl,
    required this.onSubmitted,
    required this.onChanged,
    required this.onTweetTapped,
  }) : super(key: key);

  final Function(String) onSubmitted;
  final Function(String) onChanged;
  final VoidCallback onTweetTapped;

  @override
  Widget build(BuildContext context) {
    return ElevatedContainer(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: Image.network(photoUrl),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        onChanged: onChanged,
                        onSubmitted: onSubmitted,
                        maxLines: 5,
                        maxLength: 140,
                        decoration: const InputDecoration(
                            hintText: 'What\'s happening?'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Pressable(
                              onTap: onTweetTapped,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  'Tweet',
                                  style: Theme.of(context).textTheme.button,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

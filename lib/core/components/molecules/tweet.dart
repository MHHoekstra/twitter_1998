import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

import '../atoms/elevated_container.dart';
import '../atoms/name_at_text.dart';
import 'pressable.dart';

class Tweet extends StatelessWidget {
  const Tweet({
    Key? key,
    required this.name,
    required this.at,
    required this.text,
    required this.photoUrl,
    required this.liked,
    required this.retweeted,
    required this.onLikeTap,
    required this.onRetweetTap,
    required this.onShareTap,
    required this.onCommentTap,
  }) : super(key: key);
  final String name;
  final String at;
  final String text;
  final String photoUrl;
  final bool liked;
  final bool retweeted;
  final VoidCallback onLikeTap;
  final VoidCallback onRetweetTap;
  final VoidCallback onShareTap;
  final VoidCallback onCommentTap;

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
                      NameAtText(name: name, at: at),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(text, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Pressable(
                  onTap: onCommentTap,
                  child: const Icon(
                    Pixel.comment,
                    size: 16,
                  ),
                ),
                Pressable(
                  onTap: onRetweetTap,
                  child: Icon(
                    Pixel.sort,
                    size: 16,
                    color: retweeted ? Colors.blue : null,
                  ),
                ),
                Pressable(
                  onTap: onLikeTap,
                  child: Icon(
                    Pixel.heart,
                    size: 16,
                    color: liked ? Colors.red : null,
                  ),
                ),
                Pressable(
                  onTap: onShareTap,
                  child: const Icon(
                    Pixel.forward,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_example/insta/screen/s_feed_list.dart';
import 'package:flutter_example/insta/screen/s_story_area.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StoryArea(),
          FeedList(),
        ],
      ),
    );
  }
}

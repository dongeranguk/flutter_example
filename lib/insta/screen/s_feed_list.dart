import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final feedDataList = [
  FeedData(userName: 'User1', likeCount: 50, content: '오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.오늘 아침은 맛있었다.'),
  FeedData(userName: 'User2', likeCount: 24, content: '오늘 점심은 맛있었다.'),
  FeedData(userName: 'User3', likeCount: 1, content: '오늘 저녁은 맛있었다.'),
  FeedData(userName: 'User4', likeCount: 82, content: '오늘 점심은 맛있었다.'),
  FeedData(userName: 'User5', likeCount: 32, content: '오늘 저녁은 맛있었다.'),
  FeedData(userName: 'User6', likeCount: 153, content: '오늘 점심은 맛있었다.'),
  FeedData(userName: 'User7', likeCount: 5, content: '오늘 저녁은 맛있었다.'),
  FeedData(userName: 'User8', likeCount: 9, content: '오늘 점심은 맛있었다.'),
  FeedData(userName: 'User9', likeCount: 11, content: '오늘 저녁은 맛있었다.'),
  FeedData(userName: 'User10', likeCount: 319, content: '오늘 아침은 맛있었다.'),
];

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: feedDataList.length,
        itemBuilder: (context, index) =>
            FeedItem(feedData: feedDataList[index]));
  }
}

class FeedData {
  final String userName;
  final int likeCount;
  final String content;

  const FeedData(
      {required this.userName, required this.likeCount, required this.content});
}

class FeedItem extends StatelessWidget {
  final FeedData feedData;

  const FeedItem({required this.feedData, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade300,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(feedData.userName),
              Spacer(),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        SizedBox(height: 8,),
        Container(
          color: Colors.grey,
          width: double.infinity,
          height: 280,
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble)),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.paperplane)),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bookmark)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text('좋아요 ${feedData.likeCount}개', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: RichText(text: TextSpan(
            children: [
              TextSpan(text: feedData.userName, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: feedData.content),
            ],
            style: TextStyle(color: Colors.black),
          )),
        ),
        const SizedBox(height: 8,),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter에서 외부 라이브러리 사용하기'),
      ),
      body: TestWidget(),
    ),
  ));
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RandomWords();
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final words = generateWordPairs().take(5).toList();
    final widgets = words
        .map((word) => Text(
              word.asCamelCase,
              style: const TextStyle(fontSize: 30),
            ))
        .toList();

    return Column(
      children: widgets,
    );
  }
}

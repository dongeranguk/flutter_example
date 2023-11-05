import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Widget을 상하로 배치하기'),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {

  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

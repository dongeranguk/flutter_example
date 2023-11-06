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
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 80,
          color: Colors.red,
          child: Text('Container 1'),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.green,
          child: Text('Container 2'),
        ),
        Container(
          width: 100,
          height: 80,
          color: Colors.blue,
          child: Text('Container 3'),
        ),
      ],
    );
  }
}

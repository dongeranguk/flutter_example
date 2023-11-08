import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Widget을 비율로 배치하기')),
        body: const Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(color: Colors.red, height: 300,),
        Flexible(flex: 1, child: Container(color: Colors.yellow, height: 20,)),
        Expanded(child: Container(color: Colors.blue, height: 300,)),
      ],
    );
  }
}

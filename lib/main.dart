import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Widget을 겹겹이 쌓아 배치하기')),
        body: const Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(width: 400, height: 400, color: Colors.black,),
      Container(width: 300, height: 300, color: Colors.red,),
      Container(width: 200, height: 200, color: Colors.blue,),
      Container(width: 100, height: 100, color: Colors.green,),
    ],);
  }
}

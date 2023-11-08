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
        Container(
          color: Colors.red,
          width: 50,
          height: 50,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            width: 50,
            height: 50,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: SingleChildScrollView(child: Column(
              children: [
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
                Container(color: Colors.blue, width: 20, height: 20, margin: const EdgeInsets.symmetric(vertical: 8),),
              ],
            )),
          ),
        ),
        Container(
          color: Colors.red,
          width: 50,
          height: 50,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          color: Colors.red,
          width: 50,
          height: 50,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          color: Colors.red,
          width: 50,
          height: 50,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          color: Colors.red,
          width: 50,
          height: 50,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
      ],
    );
  }
}

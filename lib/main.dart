import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Flutter에서 로컬 데이터 활용하기')),
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
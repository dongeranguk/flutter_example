import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: const Text('Flutter에서 화면 이동하기')),
    body: const HomeWidget()),
  ));
}

class HomeWidget extends StatefulWidget {

  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

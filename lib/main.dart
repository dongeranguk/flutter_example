import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Flutter에서 외부 라이브러리 사용하기'),),
      body: TestWidget(),
    ),
  ));
}

class TestWidget extends StatelessWidget {

  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
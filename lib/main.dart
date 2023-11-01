import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: TestWidget()
    ),
  ));
  debugPrint('hi');
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
      ),
    );
  }
}

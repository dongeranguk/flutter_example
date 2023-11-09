import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ConstraintWidget(),
        ),
      ),
    ),
  );
}

class ConstraintWidget extends StatelessWidget {
  const ConstraintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          width: 300,
          height: 300,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.red,
              width: 200,
              height: 200,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(child: Container(color: Colors.yellow, child: Text('Hello, Flutter! Hello, Flutter! Hello, Flutter! Hello, Flutter! Hello, Flutter! Hello, Flutter! Hello, Flutter! Hello, Flutter! Hello, Flutter! Hello, Flutter! Hello, Flutter! '))),
            Expanded(child: Container(color: Colors.green, child: Text('Hello, Flutter!')))
          ],
        ),
      ],
    );
  }
}

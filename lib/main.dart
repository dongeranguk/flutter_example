import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Flutter의 Callback')),
      body: TestWidget(),
    ),
  ));
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Count : $count',
          style: const TextStyle(fontSize: 30),
        ),
        CountButton(addCount)
      ],
    );
  }

  void addCount(int value) => setState(() => count = count + value);
}

class CountButton extends StatelessWidget {

  const CountButton(this.callback, {super.key});

  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback.call(1),
      onDoubleTap: () => callback.call(5),
      onLongPress: () => callback.call(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 8),
            width: 100,
            height: 40,
            decoration: BoxDecoration(border: Border.all()),
            child: Text('Up', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}

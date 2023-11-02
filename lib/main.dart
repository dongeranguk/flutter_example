import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              debugPrint('home!');
            },
          ),
          IconButton(
            icon: const Icon(Icons.play_arrow),
            onPressed: () {
              debugPrint('play!');
            },
          ),
        ],
        centerTitle: true,
        title: const Text('This is AppBar'),
      ),
      body: const TestWidget(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.bug_report),
        onPressed: () {
          debugPrint('FAB!');
        },
      ),
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

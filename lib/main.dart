import 'package:flutter/material.dart';
import 'package:flutter_example/screen/new_page.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter에서 화면 이동하기'),
      ),
      body: const HomeWidget(),
    ),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NewPage()))
              },
          child: const Text('Go to Page')),
    );
  }
}

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
      Align(alignment: Alignment.topCenter,
          child: Container(width: 100, height: 400, color: Colors.purple,)),
      Align(
        alignment: Alignment.center,
        child: Container(width: 270,
          height: 270,
          decoration: const BoxDecoration(color: Color(0xFFC7AB29),
            borderRadius: BorderRadius.all(Radius.elliptical(300, 140))),),
      ),
      Center(
        child: Container(width: 280,
            height: 280,
            decoration: BoxDecoration(color: Color(0xFFE5C52A),
              borderRadius: BorderRadius.circular(150),)),
      ),
      const Positioned(right: 10, bottom: 10, child: Text('항저우 아시안게임')),
    ],
    );
  }
}

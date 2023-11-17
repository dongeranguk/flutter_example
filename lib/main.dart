import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter에서 화면 이동하기')),
      body: homeBody(index),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User')
        ],
        currentIndex: index,
        onTap: (newValue) => setState(() => index = newValue),
      ),
    );
  }

  Widget homeBody(int index) {
    switch (index) {
      case 0:
        return Center(child: Icon(Icons.home, size: 200));
      case 1:
        return Center(child: Icon(Icons.search, size: 200));
      case 2:
        return Center(child: Icon(Icons.person, size: 200));
      default:
        return Center(child: Icon(Icons.bug_report, size: 200));
    }
  }
}

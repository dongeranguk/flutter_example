import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'insta/screen/s_body.dart';

void main() {
  runApp(const InstaCloneApp());
}

class InstaCloneApp extends StatelessWidget {
  const InstaCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white, secondary: Colors.black),
        useMaterial3: true,
        textTheme: TextTheme(headlineLarge: GoogleFonts.lobsterTwo()),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 28),
          unselectedIconTheme: IconThemeData(size: 20),
        ),
      ),
      home: InstaCloneHome(),
    );
  }
}

class InstaCloneHome extends StatefulWidget {
  const InstaCloneHome({super.key});

  @override
  State<InstaCloneHome> createState() => _InstaCloneHomeState();
}

class _InstaCloneHomeState extends State<InstaCloneHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Instagram',
            style: textTheme.headlineLarge
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite_outline),
              onPressed: () {
                print('favorite!');
              },
            ),
            IconButton(
              icon: const Icon(CupertinoIcons.paperplane),
              onPressed: () {
                print('message!');
              },
            ),
          ]),
      body: InstaBody(index: index),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      ], onTap: (newIndex) => setState(() => this.index = newIndex), currentIndex: index,),
    );
  }
}

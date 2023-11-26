import 'package:flutter/material.dart';
import 'package:flutter_example/insta/screen/s_home.dart';
import 'package:flutter_example/insta/screen/s_search.dart';

class InstaBody extends StatelessWidget {
  final int index;

  const InstaBody({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    if(index == 0) {
      return HomeScreen();
    }

    return SearchScreen();
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_example/insta/screen/s_search_grid.dart';
import 'package:flutter_example/insta/screen/s_search_text_bar.dart';

class SearchScreen extends StatelessWidget {

  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
            SearchTextBar(),
            SearchGrid(),
          ],),
      ),
    );
  }
}
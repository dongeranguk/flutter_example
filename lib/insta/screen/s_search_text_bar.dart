import 'package:flutter/material.dart';

class SearchTextBar extends StatelessWidget {
  const SearchTextBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          height: 40,
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: '검색',
              contentPadding: const EdgeInsets.all(0),
              filled: true,
              fillColor: Colors.grey.shade200,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 1)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 1)),
            ),
          )),
    );
  }
}

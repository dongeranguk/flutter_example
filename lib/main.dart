import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: FavoriteWidget(),
      ),
    ),
  );
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = false;
  int _favoriteCount = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/lake.jpg'),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(0),
              child: IconButton(
                padding: EdgeInsets.all(0),
                alignment: Alignment.centerRight,
                icon: Icon(_isFavorite ? Icons.star : Icons.star_border, color: Colors.red[500],),
                onPressed: _toggleFavorite,
              ),
            ),
            SizedBox(
              child: Text('$_favoriteCount'),
            )
          ],
        )
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _favoriteCount -= 1;
        _isFavorite = false;
      } else {
        _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }
}

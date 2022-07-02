import 'package:flutter/material.dart';

class tvshows extends StatelessWidget {
  const tvshows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TV Shows',
        ),
      ),
      body: Text(
        'Latest TV Shows will be shown here',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}

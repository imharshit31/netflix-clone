import 'package:flutter/material.dart';

class movies extends StatelessWidget {
  const movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movies',
        ),
      ),
      body: Text(
        'Latest Movies will be shown here',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}

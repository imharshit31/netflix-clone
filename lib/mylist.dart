import 'package:flutter/material.dart';

class mylist extends StatelessWidget {
  const mylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY List',
        ),
      ),
      body: Text(
        'Your List will be shown here',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}

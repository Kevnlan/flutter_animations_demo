import 'package:flutter/material.dart';

class Anicoto extends StatelessWidget {
  const Anicoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: 100,
            height: 100,
            color: Colors.red,
            child: const Text('Anicoto')),
      ),
    );
  }
}

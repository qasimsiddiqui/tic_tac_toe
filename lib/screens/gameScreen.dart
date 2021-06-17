import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/widgets/grid.dart';

final turnProvider = StateProvider<int>((ref) {
  int numb = Random().nextInt(10);
  return numb > 5 ? 1 : 2;
});

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    if (deviceWidth > 500) {
      deviceWidth = 500;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("GameScreen"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Grid(deviceWidth),
        ),
      ),
    );
  }
}

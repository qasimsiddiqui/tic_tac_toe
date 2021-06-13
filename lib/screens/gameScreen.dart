import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widgets/grid.dart';

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

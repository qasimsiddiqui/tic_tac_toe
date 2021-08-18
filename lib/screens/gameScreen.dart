import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/screens/homeScreen.dart';
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
        centerTitle: true,
        title: Text("Tic Tac Toe"),
      ),
      body: Consumer(
        builder: (context, watch, _) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: watch(turnProvider).state == 1
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.blue[300])
                    : null,
                padding: EdgeInsets.all(15),
                child: Text('Player 1 :: X',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              Center(child: Grid(deviceWidth)),
              Container(
                decoration: watch(turnProvider).state == 2
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.blue[300])
                    : null,
                padding: EdgeInsets.all(15),
                child: Text('Player 2 :: O',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/widgets/grid.dart';

// Provider to manage player's turns.
final turnProvider = StateProvider<int>((ref) => 1);

final gridManager = StateProvider((ref) => List.filled(9, 0, growable: false));

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
      body: Consumer(
        builder: (context, watch, _) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: watch(turnProvider).state == 1
                        ? Colors.purple
                        : Colors.blue[300]),
                padding: EdgeInsets.all(15),
                child: Text('Player 1 :: X',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              Center(child: Grid(deviceWidth)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: watch(turnProvider).state == 1
                      ? Colors.blue[300]
                      : Colors.purple,
                ),
                padding: EdgeInsets.all(15),
                child: Text('Player 2 :: O',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(height: deviceWidth * 0.2),
            ],
          ),
        ),
      ),
    );
  }
}

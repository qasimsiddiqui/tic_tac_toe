import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/screens/gameScreen.dart';

// Provider to manage player's turns.
final turnProvider = StateProvider<int>((ref) => 1);
// Provider to manage the game Grid
final gridManager = StateProvider((ref) => List.filled(9, 0, growable: false));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tic Tac Toe"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GameScreen()),
                    );
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(12),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Text('Play!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

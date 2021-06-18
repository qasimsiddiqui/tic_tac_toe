import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/screens/gameScreen.dart';
import 'package:tic_tac_toe/utils/utils.dart';

class Cell extends StatelessWidget {
  final double deviceWidth;
  final int gridIndex;

  const Cell({required this.deviceWidth, required this.gridIndex});

  @override
  Widget build(BuildContext context) {
    // Player 1 : X (Icons.close)
    // Player 2 : O (Icons.panorama_fish_eye)
    Icon whichIcon() {
      var grid = context.read(gridManager).state;
      if (grid[gridIndex] == 1) {
        return Icon(
          Icons.close,
          size: 45,
        );
      } else if (grid[gridIndex] == 2) {
        return Icon(
          Icons.panorama_fish_eye,
          size: 45,
        );
      } else {
        return Icon(
          null,
          size: 45,
        );
      }
    }

    return Consumer(
      builder: (context, watch, _) => InkWell(
        child: Container(
            width: deviceWidth * 0.21,
            height: deviceWidth * 0.21,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xFF15ADAD),
            ),
            child: whichIcon()),
        onTap: () {
          List grid = watch(gridManager).state;
          int turn = watch(turnProvider).state;

          if (grid[gridIndex] == 0)
            context.read(gridManager).state[gridIndex] = turn;

          if (turn == 1)
            context.read(turnProvider).state = 2;
          else
            context.read(turnProvider).state = 1;

          print("Player $turn's turn done.");
          print(grid);

          int playerWon = checkWin(grid);
          if (playerWon == 1)
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text("Player 1 Won!"),
                      actions: [
                        TextButton(
                          child: Text('Okay'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ));
          if (playerWon == 2)
            showDialog(
                context: context,
                builder: (_) => AlertDialog(
                      title: Text("Player 2 Won!"),
                      actions: [
                        TextButton(
                          child: Text('Okay'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ));
        },
      ),
    );
  }
}

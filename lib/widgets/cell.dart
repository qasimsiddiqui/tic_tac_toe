import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/screens/gameScreen.dart';

class Cell extends StatelessWidget {
  final double deviceWidth;
  final int gridIndex;

  const Cell({required this.deviceWidth, required this.gridIndex});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) => InkWell(
        child: Container(
          width: deviceWidth * 0.21,
          height: deviceWidth * 0.21,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFF15ADAD),
          ),
          child: Icon(
            // Player 1 : X (Icons.close)
            // Player 2 : O (Icons.panorama_fish_eye)
            watch(turnProvider).state == 1
                ? Icons.close
                : Icons.panorama_fish_eye,
            size: 45,
          ),
        ),
        onTap: () {
          int numb = watch(turnProvider).state;

          if (numb == 1)
            context.read(turnProvider).state = 2;
          else
            context.read(turnProvider).state = 1;

          print("Player $numb's turn done.");
        },
      ),
    );
  }
}

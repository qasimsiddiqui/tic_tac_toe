import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widgets/cell.dart';

class Grid extends StatelessWidget {
  final double deviceWidth;

  Grid(this.deviceWidth);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Color(0xFF2C6171),
    );

    return Container(
      width: deviceWidth * 0.75,
      height: deviceWidth * 0.75,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cell(deviceWidth),
              SizedBox(
                width: 5,
                child: Container(
                    height: deviceWidth * 0.215, decoration: boxDecoration),
              ),
              Cell(deviceWidth),
              SizedBox(
                width: 5,
                child: Container(
                    height: deviceWidth * 0.215, decoration: boxDecoration),
              ),
              Cell(deviceWidth)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(2.5),
            child: SizedBox(
              height: 5,
              child: Container(
                  width: deviceWidth * 0.75, decoration: boxDecoration),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cell(deviceWidth),
              SizedBox(
                width: 5,
                child: Container(
                    height: deviceWidth * 0.215, decoration: boxDecoration),
              ),
              Cell(deviceWidth),
              SizedBox(
                width: 5,
                child: Container(
                    height: deviceWidth * 0.215, decoration: boxDecoration),
              ),
              Cell(deviceWidth)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(2.5),
            child: SizedBox(
              height: 5,
              child: Container(
                width: deviceWidth * 0.75,
                decoration: boxDecoration,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cell(deviceWidth),
              SizedBox(
                width: 5,
                child: Container(
                  height: deviceWidth * 0.215,
                  decoration: boxDecoration,
                ),
              ),
              Cell(deviceWidth),
              SizedBox(
                width: 5,
                child: Container(
                  height: deviceWidth * 0.215,
                  decoration: boxDecoration,
                ),
              ),
              Cell(deviceWidth)
            ],
          )
        ],
      ),
    );
  }
}
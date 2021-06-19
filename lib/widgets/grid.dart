import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widgets/cell.dart';

class Grid extends StatelessWidget {
  final double deviceWidth;

  Grid(this.deviceWidth);

  Container sizedBoxChild({double height = 1, double width = 1}) {
    return Container(
        width: deviceWidth * width,
        height: deviceWidth * height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xFF2C6171),
        ));
  }

  @override
  Widget build(BuildContext context) {
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
              Cell(
                deviceWidth: deviceWidth,
                gridIndex: 0,
              ),
              SizedBox(width: 5, child: sizedBoxChild(height: 0.215)),
              Cell(
                deviceWidth: deviceWidth,
                gridIndex: 1,
              ),
              SizedBox(width: 5, child: sizedBoxChild(height: 0.215)),
              Cell(
                deviceWidth: deviceWidth,
                gridIndex: 2,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(2.5),
            child: SizedBox(
              height: 5,
              child: sizedBoxChild(width: 0.75),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cell(
                deviceWidth: deviceWidth,
                gridIndex: 3,
              ),
              SizedBox(width: 5, child: sizedBoxChild(height: 0.215)),
              Cell(
                deviceWidth: deviceWidth,
                gridIndex: 4,
              ),
              SizedBox(width: 5, child: sizedBoxChild(height: 0.215)),
              Cell(
                deviceWidth: deviceWidth,
                gridIndex: 5,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(2.5),
            child: SizedBox(
              height: 5,
              child: sizedBoxChild(width: 0.75),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Cell(
                deviceWidth: deviceWidth,
                gridIndex: 6,
              ),
              SizedBox(width: 5, child: sizedBoxChild(height: 0.215)),
              Cell(
                deviceWidth: deviceWidth,
                gridIndex: 7,
              ),
              SizedBox(width: 5, child: sizedBoxChild(height: 0.215)),
              Cell(
                deviceWidth: deviceWidth,
                gridIndex: 8,
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Cell extends StatelessWidget {
  final double deviceWidth;

  const Cell(this.deviceWidth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: deviceWidth * 0.21,
        height: deviceWidth * 0.21,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFF15ADAD),
        ),
        child: Icon(null), //Icons.close,,, Icons.panorama_fish_eye
      ),
      onTap: () {
        print("Tapped, Device Width : $deviceWidth");
      },
    );
  }
}

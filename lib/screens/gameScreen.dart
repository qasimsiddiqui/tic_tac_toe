import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Widget container(double deviceWidth) {
    return InkWell(
      child: Container(
        width: deviceWidth * 0.21,
        height: deviceWidth * 0.21,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFF15ADAD),
        ),
      ),
      onTap: () {
        print("Tapped, Device Width : $deviceWidth");
      },
    );
  }

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
          child: Container(
            width: deviceWidth * 0.75,
            height: deviceWidth * 0.75,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    container(deviceWidth),
                    SizedBox(
                      width: 5,
                      child: Container(
                        height: deviceWidth * 0.215,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xFF2C6171),
                        ),
                      ),
                    ),
                    container(deviceWidth),
                    SizedBox(
                      width: 5,
                      child: Container(
                        height: deviceWidth * 0.215,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xFF2C6171),
                        ),
                      ),
                    ),
                    container(deviceWidth)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(2.5),
                  child: SizedBox(
                    height: 5,
                    child: Container(
                      width: deviceWidth * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFF2C6171),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    container(deviceWidth),
                    SizedBox(
                      width: 5,
                      child: Container(
                        height: deviceWidth * 0.215,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xFF2C6171),
                        ),
                      ),
                    ),
                    container(deviceWidth),
                    SizedBox(
                      width: 5,
                      child: Container(
                        height: deviceWidth * 0.215,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xFF2C6171),
                        ),
                      ),
                    ),
                    container(deviceWidth)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(2.5),
                  child: SizedBox(
                    height: 5,
                    child: Container(
                      width: deviceWidth * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFF2C6171),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    container(deviceWidth),
                    SizedBox(
                      width: 5,
                      child: Container(
                        height: deviceWidth * 0.215,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xFF2C6171),
                        ),
                      ),
                    ),
                    container(deviceWidth),
                    SizedBox(
                      width: 5,
                      child: Container(
                        height: deviceWidth * 0.215,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xFF2C6171),
                        ),
                      ),
                    ),
                    container(deviceWidth)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var LiftDiceNumber = 1;
  var RightDiceNumber = 1;
  var DLiftDiceNumber = 1;
  var DRightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(
                    () {
                      LiftDiceNumber = Random().nextInt(6) + 1;
                    },
                  );
                },
                child: Image(
                  width: 200,
                  image: AssetImage('images/dice$LiftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    RightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  width: 200,
                  image: AssetImage('images/dice$RightDiceNumber.png'),
                ),
              ),
            )
          ],
        ),

         Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(
                    () {
                      DLiftDiceNumber = Random().nextInt(6) + 1;
                    },
                  );
                },
                child: Image(
                  width: 200,
                  height: 200,
                  image: AssetImage('images/dice$DLiftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    DRightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  width: 200,
                  height: 200,
                  image: AssetImage('images/dice$DRightDiceNumber.png'),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

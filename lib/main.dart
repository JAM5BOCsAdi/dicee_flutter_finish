import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice_Game',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text('Dicee'),
          ),
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  /* ------------------ GLOBAL VARIABLES ------------------ */
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  /* ------------------ FUNCTIONS ------------------ */
  /*
   IF you want to make ONLY 1 function:
   [DELETE/COMMENT OUT: leftDiceNumberChange() and rightDiceNumberChange() functions]

   void DiceNumberChange() {
      setState(
        () {
          leftDiceNumber = Random().nextInt(6) + 1; // 6: 0-5   +1 means: 1-6
          rightDiceNumber = Random().nextInt(6) + 1; // 6: 0-5   +1 means: 1-6
        }
      );
   }
  */

  void leftDiceNumberChange() {
    setState(
      () {
        leftDiceNumber = Random().nextInt(6) + 1; // 6: 0-5   +1 means: 1-6
        rightDiceNumber = Random().nextInt(6) + 1; // 6: 0-5   +1 means: 1-6
        if (kDebugMode) {
          print("-------------------- TOP --------------------");
          print("**** LEFT Dice been pushed ****");
          print(
              "RIGHTDiceNumber = $rightDiceNumber\nLEFTDiceNumber = $leftDiceNumber");
          print("------------------- BOTTOM ------------------");
        }
      },
    );
  }

  void rightDiceNumberChange() {
    setState(
      () {
        leftDiceNumber = Random().nextInt(6) + 1; // 6: 0-5   +1 means: 1-6
        rightDiceNumber = Random().nextInt(6) + 1; // 6: 0-5   +1 means: 1-6
        if (kDebugMode) {
          print("-------------------- TOP --------------------");
          print("**** RIGHT Dice been pushed ****");
          print(
              "RIGHTDiceNumber = $rightDiceNumber\nLEFTDiceNumber = $leftDiceNumber");
          print("------------------- BOTTOM ------------------");
        }
      },
    );
  }

  /* ------------------ LAYOUT ------------------ */
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              // flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.all(0.0),
                    ),
                    shadowColor: MaterialStateProperty.all(
                      const Color.fromRGBO(0, 0, 0, 0.0),
                    ),
                  ),
                  onPressed: () {
                    leftDiceNumberChange();
                  },
                  child: Image.asset("images/dice$leftDiceNumber.png"),
                ),
              ),
            ),
            Expanded(
              // flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.all(0.0),
                    ),
                    shadowColor: MaterialStateProperty.all(
                      const Color.fromRGBO(0, 0, 0, 0.0),
                    ),
                  ),
                  onPressed: () {
                    rightDiceNumberChange();
                  },
                  child: Image.asset("images/dice$rightDiceNumber.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

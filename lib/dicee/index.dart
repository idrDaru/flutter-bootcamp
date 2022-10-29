import 'dart:math';
import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () => {
                  // setState(
                  //   () {
                  //     leftDiceNumber = Random().nextInt(6) + 1;
                  //     rightDiceNumber = Random().nextInt(6) + 1;
                  //   },
                  // )
                  changeNumber(),
                },
                child: Image.asset('images/dicee/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => {
                  // setState(
                  //   () {
                  //     rightDiceNumber = Random().nextInt(6) + 1;
                  //     leftDiceNumber = Random().nextInt(6) + 1;
                  //   },
                  // )
                  changeNumber(),
                },
                child: Image.asset('images/dicee/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changeNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
}

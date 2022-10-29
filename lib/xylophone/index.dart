import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(Colors.red, 1),
            buildKey(Colors.orange, 2),
            buildKey(Colors.yellow, 3),
            buildKey(Colors.green, 4),
            buildKey(Colors.teal, 5),
            buildKey(Colors.blue, 6),
            buildKey(Colors.purple, 7),
          ],
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('xylophone/note$soundNumber.wav');
  }

  Widget buildKey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }
}

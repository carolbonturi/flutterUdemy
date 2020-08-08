import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget playKey({int sound, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(sound);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            playKey(sound: 1, color: Colors.red),
            playKey(sound: 2, color: Colors.orange),
            playKey(sound: 3, color: Colors.yellow),
            playKey(sound: 4, color: Colors.green),
            playKey(sound: 5, color: Colors.teal),
            playKey(sound: 6, color: Colors.blue),
            playKey(sound: 7, color: Colors.purple),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        )),
      ),
    );
  }
}

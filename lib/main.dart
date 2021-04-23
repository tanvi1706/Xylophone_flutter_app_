import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                buildkey(color: Colors.red, soundNumber: 1),
                buildkey(color: Colors.orange, soundNumber: 2),
                buildkey(color: Colors.yellow, soundNumber: 3),
                buildkey(color: Colors.green, soundNumber: 4),
                buildkey(color: Colors.blue, soundNumber: 5),
                buildkey(color: Colors.purple, soundNumber: 6),
                buildkey(color: Colors.pinkAccent, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

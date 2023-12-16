import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  void buildKey() {
    Expanded(
      child: Container(
        color: Colors.red,
        child: TextButton(
          onPressed: () {
            playSound(1);
          },
          child: Text(''),
        ),
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             buildKey(),
             buildKey(),
             buildKey(),
             buildKey(),
             buildKey(),
             buildKey(),
             buildKey(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int no) {
    final player = new AudioCache();
    player.play("note$no.wav");
  }

  Expanded button(Color color, int soundnumber) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundnumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              button(Colors.red, 1),
              button(Colors.orange, 2),
              button(Colors.pink, 3),
              button(Colors.yellow, 4),
              button(Colors.green, 5),
              button(Colors.blue, 6),
              button(Colors.purple, 7)
            ],
          ),
        ),
      ),
    );
  }
}

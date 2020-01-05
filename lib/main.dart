import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int no) {
    final player = new AudioCache();
    player.play("note$no.wav");
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
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  playSound(2);
                },
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  playSound(3);
                },
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  playSound(4);
                },
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () {
                  playSound(5);
                },
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () {
                  playSound(6);
                },
                color: Colors.purple,
              ),
              FlatButton(
                onPressed: () {
                  playSound(7);
                },
                color: Colors.pink,
              )
            ],
          ),
        ),
      ),
    );
  }
}

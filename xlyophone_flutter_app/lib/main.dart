import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum){
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [

              Expanded(
                child: FlatButton(
                  onPressed : () {
                  playSound(1);
                },
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed : () {
                    playSound(2);
                  },
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed : () {
                    playSound(3);
                  },
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed : () {
                    playSound(4);
                  },
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed : () {
                    playSound(5);
                  },
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed : () {
                    playSound(6);
                  },
                  color: Colors.blue[900],
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed : () {
                    playSound(7);
                  },
                  color: Colors.deepPurple,
                ),
              ),




            ],

          )


        ),
      ),
    );
  }
}

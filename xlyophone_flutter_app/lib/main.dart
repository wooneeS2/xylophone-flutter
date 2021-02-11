import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum){
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildKey({Color color, int SoundNumber}) {
    return Expanded(
      child:FlatButton(
        color: color,
          onPressed: () {
          playSound(SoundNumber);
          },
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
            children: <Widget> [
              buildKey(color:Colors.red, SoundNumber : 1),
              buildKey(color:Colors.orange, SoundNumber : 2),
              buildKey(color:Colors.yellow, SoundNumber : 3),
              buildKey(color:Colors.green, SoundNumber : 4),
              buildKey(color:Colors.blue, SoundNumber : 5),
              buildKey(color:Colors.blue[900], SoundNumber : 6),
              buildKey(color:Colors.purple, SoundNumber : 7),





            ],

          )


        ),
      ),
    );
  }
}

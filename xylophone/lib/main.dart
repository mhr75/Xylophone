import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

Expanded buildExpanded({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        final player = AudioCache();
        player.play('note$soundNumber.wav');
      },
      color: color,
    ),
  );
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Xylophone'),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildExpanded(color: Colors.red, soundNumber: 1),
              buildExpanded(color: Colors.orange, soundNumber: 2),
              buildExpanded(color: Colors.yellow, soundNumber: 3),
              buildExpanded(color: Colors.blue, soundNumber: 4),
              buildExpanded(color: Colors.cyan, soundNumber: 5),
              buildExpanded(color: Colors.green, soundNumber: 6),
              buildExpanded(color: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

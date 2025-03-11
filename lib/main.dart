import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MarimbaApp());
}

class MarimbaApp extends StatelessWidget {
  final AudioPlayer _player = AudioPlayer();
  void playSong(int songNumber) async {
    await _player.play(AssetSource('nota$songNumber.wav'));
  }

  Expanded buildBtn({required Color cor, required int noteNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          playSong(noteNumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(backgroundColor: cor),
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
            children: [
              buildBtn(cor: Colors.teal, noteNumber: 1),
              buildBtn(cor: Colors.blue, noteNumber: 2),
              buildBtn(cor: Colors.yellow, noteNumber: 3),
              buildBtn(cor: Colors.red, noteNumber: 4),
              buildBtn(cor: Colors.grey, noteNumber: 5),
              buildBtn(cor: Colors.purple, noteNumber: 6),
              buildBtn(cor: Colors.brown, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

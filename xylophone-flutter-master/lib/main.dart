import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Center(
                    child: TextButton(
                      child: Text("Click Me",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          DeviceFileSource('assets/sounds/note1.wav'),
                        ); // will immediately start playing
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: Center(
                    child: TextButton(
                      child: Text("Click Me",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          DeviceFileSource('assets/sounds/note2.wav'),
                        ); // will immediately start playing
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: TextButton(
                      child: Text("Click Me",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          DeviceFileSource('assets/sounds/note4.wav'),
                        ); // will immediately start playing
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.greenAccent,
                  child: Center(
                    child: TextButton(
                      child: Text("Click Me",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          DeviceFileSource('assets/sounds/note5.wav'),
                        ); // will immediately start playing
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.deepOrange,
                  child: Center(
                    child: TextButton(
                      child: Text("Click Me",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          DeviceFileSource('assets/sounds/note6.wav'),
                        ); // will immediately start playing
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.lightBlue,
                  child: Center(
                    child: TextButton(
                      child: Text("Click Me",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          DeviceFileSource('assets/sounds/note7.wav'),
                        ); // will immediately start playing
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pinkAccent,
                  child: Center(
                    child: TextButton(
                      child: Text("Click Me"),
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          DeviceFileSource('assets/sounds/note9.mp3'),
                        ); // will immediately start playing
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

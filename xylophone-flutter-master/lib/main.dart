import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler_platform_interface/permission_handler_platform_interface.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  AudioPlayer player = AudioPlayer();
  String audioasset = "assets/audio/ambulance_sound.mp3";
  ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
  Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
  int result = await player.playBytes(soundbytes);
  if(result == 1){ //play success
  print("Sound playing successful.");
  }else{
  print("Error while playing sound.");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Expanded(
              //   child: Container(
              //     color: Colors.red,
              //     child: Center(
              //       child: TextButton(
              //         child: Icon(
              //           CupertinoIcons.music_note_2,
              //           color: Colors.white,
              //           size: 20,
              //         ),
              //         onPressed: () async {
              //           playsound(1); // will immediately start playing
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.yellow,
              //     child: Center(
              //       child: TextButton(
              //         child: Icon(
              //           CupertinoIcons.music_note_2,
              //           color: Colors.white,
              //           size: 20,
              //         ),
              //         onPressed: () async {
              //           playsound(2); // will immediately start playing
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.blue,
              //     child: Center(
              //       child: TextButton(
              //         child: Icon(
              //           CupertinoIcons.music_note_2,
              //           color: Colors.white,
              //           size: 20,
              //         ),
              //         onPressed: () async {
              //           playsound(3); // will immediately start playing
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.greenAccent,
              //     child: Center(
              //       child: TextButton(
              //         child: Icon(
              //           CupertinoIcons.music_note_2,
              //           color: Colors.white,
              //           size: 20,
              //         ),
              //         onPressed: () async {
              //           playsound(4); // will immediately start playing
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.deepOrange,
              //     child: Center(
              //       child: TextButton(
              //         child: Icon(
              //           CupertinoIcons.music_note_2,
              //           color: Colors.white,
              //           size: 20,
              //         ),
              //         onPressed: () async {
              //           playsound(5); // will immediately start playing
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.lightBlue,
              //     child: Center(
              //       child: TextButton(
              //         child: Icon(
              //           CupertinoIcons.music_note_2,
              //           color: Colors.white,
              //           size: 20,
              //         ),
              //         onPressed: () async {
              //           playsound(6);
              //           // will immediately start playing
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.pinkAccent,
              //     child: Center(
              //       child: TextButton(
              //         child: Text(
              //           "Play Beat",
              //           style: TextStyle(
              //             color: Colors.white,
              //           ),
              //         ),
              //         onPressed: () async {
              //           playsound(7);
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              ui(color: Colors.red, number: 1),
              ui(color: Colors.yellowAccent, number: 2),
              ui(color: Colors.lightBlue, number: 3),
              ui(color: Colors.deepOrange, number: 4),
              ui(color: Colors.cyan, number: 5),
              ui(color: Colors.indigoAccent, number: 6),
              ui(color: Colors.purpleAccent, number: 7),
              Expanded(
                child: Container(
                  color: CupertinoColors.systemBlue,
                  child: Center(
                    child: TextButton(
                      child: Text("Play Beat"),
                      onPressed: () async {
                        playsound(9); // will immediately start playing
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void playsound(number) async {
  final player = AudioPlayer();
  if (number < 9) {
    await player.play(DeviceFileSource('assets/sounds/note$number.wav'));
  } else {
    await player.play(DeviceFileSource('assets/sounds/note$number.mp3'));
  }
}

Widget ui({color, number}) {
  return Expanded(
    child: Container(
      color: color,
      child: Center(
        child: TextButton(
          child: Icon(
            CupertinoIcons.music_note_2,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () async {
            playsound(number); // will immediately start playing
          },
        ),
      ),
    ),
  );
}

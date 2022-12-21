import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: CircleAvatar(
                    radius: 120,
                    backgroundImage: AssetImage('images/Rdj.jpeg'),
                  ),
                ),
              ),
              Text(
                'Mr. Stark',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DancingScript_Bold',
                    color: Colors.lightBlue),
              ),
              Text(
                'CEO Of Stark Industries',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'LobsterTwo-Bold',
                    color: Colors.lightBlueAccent),
              ),
              SizedBox(
                height: 20.0,
                width: 20.0,
                child: Divider(
                  color: CupertinoColors.activeBlue,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                color: Colors.lightBlue.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    hoverColor: Colors.deepPurpleAccent[900],
                    leading: Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    title: Text("212-970-4133",
                        style: TextStyle(
                            color: Colors.indigo.shade900, fontSize: 22)),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                color: Colors.lightBlue.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    hoverColor: Colors.deepPurpleAccent[900],
                    leading: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    title: Text("tonystark@gmail.com",
                        style: TextStyle(
                            color: Colors.indigo.shade900, fontSize: 20)),
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

// Row(
// children: <Widget>[
//
//
// ],
// )

// Row(
// children: <Widget>[
// Icon(Icons.call),
//
// ],
// )

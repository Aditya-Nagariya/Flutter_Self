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
                    radius: 40,
                    backgroundImage: AssetImage('images/Rdj.jpeg'),
                  ),
                ),
              ),
              Text(
                'Mr. Stark',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'CEO Of Stark Industries',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      icon: Icon(Icons.call),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  labelText: 'Phone Number',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  labelText: 'Email',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

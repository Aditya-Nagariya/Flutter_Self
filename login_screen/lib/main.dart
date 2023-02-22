import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Login Screen")),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/Rdj.jpg'),
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
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.call, color: Colors.lightBlue),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  labelText: 'Phone Number',
                ),
                controller: myController,
                validator: (value),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: myController,
                validator: (val) => !isEmail(val!) ? "Invalid Email" : null,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Email',
                  icon: Icon(Icons.email, color: Colors.lightBlue),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  labelText: 'Email',
                  counter: Text(myController.text),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    // this.myController.text = this.myController.text + '1';
                    print(myController.text);
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(myController.text)) {
                      print(myController.text + 'is not a valid email');
                    } else {
                      print(myController.text + "is valid email");
                    }
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}

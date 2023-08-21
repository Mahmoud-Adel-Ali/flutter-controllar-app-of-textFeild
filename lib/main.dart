//to start any Application ,you should write the code
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Temp(),
    );
  }
}

class Temp extends StatefulWidget {
  const Temp({super.key});

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  String myText = "";
  final myControlar = TextEditingController();
  myFunc() {
    setState(() {
      myText = myControlar.text;
    });
  }

  @override
  void initState() {
    super.initState();
    myControlar.addListener(myFunc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Controlar App"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: myControlar,
              maxLength: 21,
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // myFunc();
              },
              child: Text("Add"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your name is : $myText",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

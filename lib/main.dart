import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int clicks = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contador de clicks")),
        body: Text("Número de clicks: $clicks "),
        floatingActionButton: FloatingActionButton(
          onPressed: () => aumentarClicks(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void aumentarClicks() {
    clicks++;
    setState(() {});
  }
}

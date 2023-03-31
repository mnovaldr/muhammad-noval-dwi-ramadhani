import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(calculator());
}

class calculator extends StatelessWidget {
  const calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: lamanUtama(),
    );
  }
}

class lamanUtama extends StatefulWidget {
  const lamanUtama({super.key});

  @override
  State<lamanUtama> createState() => _lamanUtamaState();
}

class _lamanUtamaState extends State<lamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
    );
  }
}
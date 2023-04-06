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
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  double result = 0, angka1 = 0, angka2 = 0;

  // Fungsi tambah
  add() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 + angka2;
    });
  }

  // Fungsi kurang
  substract() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 - angka2;
    });
  }

  // Fungsi kali
  multiply() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 * angka2;
    });
  }

  // Fungsi bagi
  divide() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 / angka2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 0, 0),
              child: Text(
                "Result: $result",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
              controller: controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter first number',
                filled: true,
                fillColor: Colors.black12,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
              controller: controller2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter second number',
                filled: true,
                fillColor: Colors.black12,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        add();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('ADD')),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        substract();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('SUBTRACT')),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        multiply();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('MULTIPLY')),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        divide();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('DIVIDE'))
                ],
              )),
        ],
      ),
    );
  }
}

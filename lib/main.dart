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
            child: Text(
              "Result: ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: TextField(
              controller: controller1,
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
                child: Column (
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text('ADD')),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: (){}, child: Text('SUBTRACT')),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: (){}, child: Text('MULTIPLY')),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(onPressed: (){}, child: Text('DIVIDE'))],
              )),
        ],
      ),
    );
  }
}

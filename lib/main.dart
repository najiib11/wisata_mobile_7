import 'package:flutter/material.dart';

void main() {
  runApp(const ExampleState());
}

class ExampleState extends StatelessWidget {
  const ExampleState({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "latihan flutter",
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layar pertama"),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: const BiggerState(),
    );
  }
}

class BiggerState extends StatefulWidget {
  const BiggerState({super.key});

  @override
  State<BiggerState> createState() => _BiggerStateState();
}

class _BiggerStateState extends State<BiggerState> {
  double _textSize = 16.0;
  bool _box = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _box
                ? Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.red,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10.0,
                          offset: Offset(3, 6),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "Sample Text\nHello World",
                      style: TextStyle(fontSize: _textSize),
                    ),
                  )
                : Container(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _box = !_box;
                });
              },
              child: const Text("Toggle Box"),
            ),
          ],
        ),
      ),
    );
  }
}

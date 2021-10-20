import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              style: isSelected
                  ? const TextStyle(fontSize: 50, color: Colors.red, fontWeight: FontWeight.bold)
                  : const TextStyle(fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.w100),
              duration: const Duration(milliseconds: 200),
              child: const Text("Animate me!"),
            ),
            TextButton(
              child: const Text("Click me!"),
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

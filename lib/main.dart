import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Card(
      child: Center(
        child: Text("Buenas"),
      ),
    ),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Card(
        child: Center(
          child: Text("OK"),
        ),
      ),
    );
  }
}

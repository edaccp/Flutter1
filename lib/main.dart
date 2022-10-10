// #Github Subir para novo Repositório
// echo "# Flutter1" >> README.md
// git init
// git add README.md
// git commit -m "first commit"
// git branch -M main
// git remote add origin git@github.com:edaccp/Flutter1.git
// git push -u origin main

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

import 'package:flutter/material.dart';

//Utilize o código do Exercício 1 como base.
//
// Modifique a cor do fundo do aplicativo
// para rosa (pinkAccent).
//
// Salve o arquivo e clique no Hot Reload.

void main() {
  runApp(const MaterialApp(
    home: Card(
      color: Colors.pinkAccent,
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

import 'package:flutter/material.dart';

// Utilize o código do Exercício 2 como base.
// Modifique a cor da fonte do aplicativo para branco.
// Salve o arquivo e clique no Hot Reload para ver o resultado.

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Card(
          color: Colors.white,
        child: Center(
          child: Text("OK"),
        ),
      ),
    );
  }
}

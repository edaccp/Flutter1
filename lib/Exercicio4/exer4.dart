import 'package:flutter/material.dart';

// Utilize o código do Exercício 3 como base.
// Modifique o tamanho da fonte do aplicativo para 32.
// Aproveite e mude o texto de “OK” para “Flutter”.
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
          child: Text(
            "Flutter",
            style: TextStyle(fontSize: 32.0),
          ),
        ),
      ),
    );
  }
}

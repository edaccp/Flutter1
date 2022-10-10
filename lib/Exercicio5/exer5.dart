import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Utilize o código do Exercício 4 como base.
// Modifique a cor do fundo do aplicativo, adicionando um gradiente entre duas cores.
// Adicione novos Widgets, se necessário.
// Mude o texto para “Flutter Gradiente”.
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

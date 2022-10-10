import 'package:flutter/material.dart';

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
    return MaterialApp(
      home: Card(
        child: Container(
          // https://www.digitalocean.com/community/tutorials/flutter-flutter-gradient
          // Não entendi muito bem como chegar a resposta, me faltou um melhor conhecimento das classes do Flutter
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueAccent,
              Colors.purpleAccent,
            ],
          )),
          child: const Center(
            child: Text(
              "Flutter Gradiente",
              style: TextStyle(fontSize: 32.0),
            ),
          ),
        ),
      ),
    );
  }
}

/*# M02 - A03 - Exercício 2 - Reuso de Component
![](https://i.imgur.com/xG74tOh.png)

## Objetivo
Criar um componente que pode ser reutilizado para criar novos blocos coloridos, com diferentes cores e tamanhos.

## Instruções
1. Crie uma aplicação em Flutter que rode a classe MyComponent.
2. Crie a classe MyComponent, responsável por criar blocos coloridos, 
com tamanhos variados.
3. Crie a classe Block, que será chamada na classe MyComponent.
4. Utilizando a classe Block, crie os blocos com as cores e tamanhos, 
conforme a imagem de exemplo:
![](https://i.imgur.com/KIrhIhW.png)
---
### [Vídeo explicativo](https://drive.google.com/file/d/12bXWKZOyIfcPl1dpaMXl7e21HqBvnl2V/view?usp=sharing)
*/

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyComponent());
}

class MyComponent extends StatelessWidget {
  const MyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: const [
          Block(altura: 100, largura: 200, cor: Colors.green),
          Block(altura: 50, largura: 50, cor: Colors.yellow),
          Block(altura: 130, largura: 250, cor: Colors.blue),
          Block(altura: 90, largura: 150, cor: Colors.red),
        ],
      ),
    );
  }
}

class Block extends StatelessWidget {
  final double altura;
  final double largura;
  final Color cor;

  const Block(
      {Key? key,
      required this.altura,
      required this.largura,
      required this.cor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      width: largura,
      color: cor,
    );
  }
}

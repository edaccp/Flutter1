/*# M02 - A03 - Exercício 4 - Alinhamentos
![](https://i.imgur.com/xG74tOh.png)

## Objetivo
Desenvolver um aplicativo que mostre blocos alinhados nos eixos 
principal e cruzado.

## Instruções
1. Crie uma aplicação em Flutter que rode a classe Alinhamento.
2. Crie a classe Alinhamento, responsável por criar os blocos alinhados 
nos eixos principal e cruzado, conforme a imagem de exemplo:
![](https://i.imgur.com/F2Yh8nl.png)
---
### [Vídeo explicativo](https://drive.google.com/file/d/1SD4C2Z0-ZGpg7CRqzZiF9yVeZmPI8eR2/view?usp=sharing)
*/

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Alinhamento());
}

class Alinhamento extends StatelessWidget {
  const Alinhamento({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Block(altura: 100, largura: 100, cor: Colors.green),
            //  Expanded(child: SizedBox()),
            Block(altura: 100, largura: 100, cor: Colors.yellow),
            // Expanded(child: SizedBox()),
            Block(altura: 100, largura: 100, cor: Colors.red),
          ]),
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
      //   margin: EdgeInsets.all(10),
    );
  }
}

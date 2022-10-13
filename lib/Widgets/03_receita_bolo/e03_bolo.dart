/*# M02 - A03 - Exercício 3 - Receita de Bolo
![](https://i.imgur.com/xG74tOh.png)

## Objetivo
Desenvolver um aplicativo que mostre uma imagem e abaixo dela, blocos de cores diferentes, distribuídos igualmente.

## Instruções
1. Crie uma aplicação em Flutter que rode a classe Recipe.
2. Crie a classe Recipe, responsável por mostrar uma imagem e abaixo dela, 
blocos de cores diferentes, 
distribuídos igualmente, conforme a imagem de exemplo:

![](https://i.imgur.com/r3zpybj.png)

[Imagem do bolo](https://i.imgur.com/NrfOeJY.jpg)
---
### [Vídeo explicativo](https://drive.google.com/file/d/1fHWWdplnR8G1x4MxZoOUrscbDlRnE8J7/view?usp=sharing)
*/

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Recipe());
}

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network('https://i.imgur.com/NrfOeJY.jpg'),
            //  const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center, //spaceBetween
                children: [
                  const Block(altura: 100, largura: 100, cor: Colors.green),
                  Expanded(child: SizedBox()),
                  const Block(altura: 100, largura: 100, cor: Colors.red),
                  Expanded(child: SizedBox()),
                  const Block(altura: 100, largura: 100, cor: Colors.blue),
                ]),
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
      margin: EdgeInsets.all(10),
    );
  }
}

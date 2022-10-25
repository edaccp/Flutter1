/*# M02 - A07 - Exercício 1 - AppBar Icon 

![](https://i.imgur.com/xG74tOh.png)

## Objetivo
Adicionar um ícone de café na AppBar, com o título Coffee.

## Instruções
1. Crie uma aplicação em Flutter que rode a classe MyAppBar.
2. Crie a classe MyAppBar, responsável por criar a barra de título.
3. Mude a cor da AppBar para amarelo claro.
4. Adicione um ícone de café na AppBar, na cor marrom.
5. Adicione um título na AppBar, na cor marrom, conforme a imagem de exemplo:
![](https://i.imgur.com/O2Ly1VO.png)
---
### [Vídeo explicativo](https://drive.google.com/file/d/1PwdGcMlkpT5UQgGUUqxbGxp4Fj7v8um0/view?usp=sharing)
*/

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const MyAppBar(),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.coffee),
        title: const Text('Coffee'),
        backgroundColor: Colors.yellow[300],
        foregroundColor: Colors.brown,
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('MyAppBar'),
      ),
      // bottomNavigationBar: Container(
      //   height: 50.0,
      //   color: Colors.brown,
      // ),
    );
  }
}

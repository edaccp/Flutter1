/*# M02 - A03 - Exercício 2 - Menu Drawer

![](https://i.imgur.com/xG74tOh.png)

## Objetivo
Adicionar um menu na AppBar com 3 opções.

## Instruções
1. Crie uma aplicação em Flutter que rode a classe MenuDrawer.
2. Crie a classe MenuDrawer, responsável por criar o menu de opções.
3. Mude a cor da AppBar para rosa escuro.
4. Mude o título da AppBar para Menu Drawer, na cor rosa claro (shade100).
5. Mude a cor do ícone do menu hambúrguer para rosa claro.
6. Ao clicar no menu, mostre uma lista com 3 opções, contendo os ícones, as cores e os textos, conforme as imagens de exemplo:

![](https://i.imgur.com/AvNdzcv.png)
![](https://i.imgur.com/qw34vHV.png)
---
### [Vídeo explicativo](https://drive.google.com/file/d/1ZfV8bY1RJ2g9dnJJ1A4gDh1vFzo-bpO6/view?usp=sharing)*/

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
      home: const MenuDrawer(),
    );
  }
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const appName = 'Menu Drawer';
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(appName),
        backgroundColor: Colors.pink[600],
        foregroundColor: Colors.pink[100],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(appName),
      ),
      // bottomNavigationBar: Container(
      //   height: 50.0,
      //   color: Colors.brown,
      // ),
    );
  }
}

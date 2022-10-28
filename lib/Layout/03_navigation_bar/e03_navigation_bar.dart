/*# M02 - A07 - Exercício 3 - Navigation Bar

![](https://i.imgur.com/xG74tOh.png)

## Objetivo
Adicionar barra de navegação inferior, com 3 opções.

## Instruções
1. Crie uma aplicação em Flutter que rode a classe MyNavigatorBar.
2. Crie a classe MyNavigatorBar, responsável por criar a barra de 
opções inferior.
3. Mude a cor da barra inferior para cinza claro.
4. Adicione 3 opções na barra inferior: Home, Configurações e Login, 
conforme as imagens de exemplo:

![](https://i.imgur.com/BjN0IYh.png)
![](https://i.imgur.com/FKvSAFk.png)
---
### [Vídeo explicativo]
(https://drive.google.com/file/d/1D5iK8ZvqFwfLM7jM6A_xsuxnid5YsbLZ/view?usp=sharing)
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
      home: const MyNavigatorBar(),
    );
  }
}

class MyNavigatorBar extends StatelessWidget {
  const MyNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    //  const appName = 'MyNavigatorBar';
    return Scaffold(
/*     appBar: AppBar(
        //  leading: const Icon(Icons.back_hand),
        title: const Text(appName),
        backgroundColor: Colors.pink[600],
        foregroundColor: Colors.pink[100],
      ),

      endDrawer: Drawer(
        backgroundColor: Colors.pink[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            ListTile(
              leading: Icon(
                Icons.flash_on,
                color: Colors.blue,
              ),
              title: Text("Flutter"),
              subtitle: Text("Tudo são Widgtes"),
              trailing: Icon(
                Icons.chevron_right,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mood,
                color: Colors.red,
              ),
              title: Text("Dart"),
              subtitle: Text("É muito forte"),
              trailing: Icon(
                Icons.chevron_right,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.coffee,
                color: Colors.brown,
              ),
              title: Text("Cafessíneo"),
              subtitle: Text("Quero cafééé"),
              trailing: Icon(
                Icons.chevron_right,
              ),
            ),
          ],
        ),
      ),

      body: Container(
        alignment: Alignment.center,
        //    child: const Text(appName),
      ),
*/
        bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configurações',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.login),
          label: 'Login',
        ),
      ],
    ));
  }
}

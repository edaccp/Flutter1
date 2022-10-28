/*# M02 - A07 - Exercício 4 - Progress Bar
![](https://i.imgur.com/xG74tOh.png)

## Objetivo
Desenvolver uma barra de progresso que mostra a porcentagem de carregamento.

## Instruções
1. Crie uma aplicação em Flutter com uma barra de progresso e um botão.
2. Simule o carregamento de um arquivo, de 0 (zero) até 100%.
3. A cada clique no botão Upload, deve aparecer os valores numéricos, 
a porcentagem, acima da barra de progresso.
4. Para simular o carregamento, gere números aleatórios até alcançar 
o valor determinado (100%).
5. Quando alcançar 100% mostre a mensagem “Upload completo!” acima da 
barra de progresso.
6. Mostre a atualização da barra de progresso enquanto carrega o arquivo, 
indo de 0 (zero) até 100% conforme os exemplos:

![](https://i.imgur.com/aFTRmCC.png)
![](https://i.imgur.com/lxH8qCl.png)
![](https://i.imgur.com/cWNuTwV.png)
---
### [Vídeo explicativo](https://drive.google.com/file/d/1FAxQ6eknZPgiio_MJJn72xk2wbyQm73N/view?usp=sharing)
*/

import 'package:flutter/material.dart';
import 'dart:math';

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
      home: const MyProgressBar(),
    );
  }
}

class MyProgressBar extends StatefulWidget {
  const MyProgressBar({super.key});

  @override
  State<MyProgressBar> createState() => _MyProgressBarState();
}

class _MyProgressBarState extends State<MyProgressBar> {
  // const appName = 'Progress Bar';
  double progress = 0;
  String text = 'Clique para iniciar o upload';

  void uploadButton() {
    progress += Random().nextDouble();
    if (progress > 1) {
      progress = 1;
    }
    if (progress > 0 && progress < 1) {
      setState(() {
        text = '${(progress * 100).toStringAsFixed(1)}%';
      });
    } else if (progress == 1) {
      setState(() {
        text = 'Upload Completo!';
        // LinearProgressIndicator(
        //   value: progress,
        //   minHeight: 10,
        //   backgroundColor: Colors.yellow,
        //   color: Colors.green,
        //   valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
        // );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*    appBar: AppBar(
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
*/

      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  minimumSize: const Size(120, 50),
                  maximumSize: const Size(120, 50),
                ),
                onPressed: () => uploadButton(),
                onLongPress: () {
                  progress = 0;
                  setState(() {
                    text = 'Clique para iniciar o upload';
                  });
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.upload,
                        color: Colors.white,
                      ),
                      Text("Upload"), // text
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(text),
              ),
              LinearProgressIndicator(
                value: progress,
                minHeight: 10,
                backgroundColor: Colors.yellow,
                color: Colors.orange,
                //valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
              )
            ],
          )),

/*    bottomNavigationBar: BottomNavigationBar(
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
    )
    */
    );
  }
}

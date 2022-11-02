/*# M02 - A07 - Exercício 5 - Card NFT
![](https://i.imgur.com/xG74tOh.png)

## Objetivo
Desenvolver um Card de apresentação de um NFT.

## Instruções
1. Crie uma aplicação em Flutter que rode a classe CardNFT.
2. Crie a classe CardNFT, responsável por criar o card de apresentação do NFT.
3. Adicione a imagem NFT abaixo (figura 1).

![](https://i.imgur.com/w39qzaq.png)
Figura 1

4. Adicione os detalhes no card, conforme a imagem de exemplo:
![](https://i.imgur.com/BH8NmI2.png)
---
### [Vídeo explicativo](https://drive.google.com/file/d/1FYoYXJfIanpWfZgbxtKYecc0x-B-kvjc/view?usp=sharing)
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
      home: const CardNFT(),
    );
  }
}

class CardNFT extends StatefulWidget {
  const CardNFT({super.key});

  @override
  State<CardNFT> createState() => _CardNFTState();
}

class _CardNFTState extends State<CardNFT> {
  double pad = 10.0;
  // double progress = 0;
//  String text = 'Clique para iniciar o upload';
  // void uploadButton() {
  //   progress += Random().nextDouble();
  //   if (progress > 1) {
  //     progress = 1;
  //   }
  //   if (progress > 0 && progress < 1) {
  //     setState(() {
  //       text = '${(progress * 100).toStringAsFixed(1)}%';
  //     });
  //   } else if (progress == 1) {
  //     setState(() {
  //       text = 'Upload Completo!';
  //       // LinearProgressIndicator(
  //       //   value: progress,
  //       //   minHeight: 10,
  //       //   backgroundColor: Colors.yellow,
  //       //   color: Colors.green,
  //       //   valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
  //       // );
  //     });
  //   }
  // }

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
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                elevation: 10.0,
                color: const Color.fromARGB(255, 3, 33, 70),
                margin: EdgeInsets.all(pad),
                child: Padding(
                    padding: EdgeInsets.all(pad),
                    child: Column(
                      //  mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child:
                              Image.network('https://i.imgur.com/w39qzaq.png'),
                        ),
                        SizedBox(
                          height: pad,
                        ),
                        Row(children: const [
                          Text('Equilibrium #3429',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  //   fontWeight: FontWeight.bold,
                                  color: Colors.greenAccent)),
                          Expanded(child: Text(''))
                        ]),
                        SizedBox(
                          height: pad,
                        ),
                        Row(children: [
                          Text(
                              'Nossa coleção Equilibrium promove calma e balanço',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.lightBlueAccent[100])),
                          const Expanded(child: Text(''))
                        ]),
                        SizedBox(
                          height: pad,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('0.041ETH',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    //   fontWeight: FontWeight.bold,
                                    color: Colors.greenAccent)),
                            const Expanded(child: Text('')),
                            Icon(
                              Icons.access_time_filled,
                              size: 20.0,
                              color: Colors.lightBlueAccent[100],
                            ),
                            Text(
                              '  restam 3 dias',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlueAccent[100]),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 35.0,
                          thickness: 0.0,
                          color: Colors.grey,
                        ),
                        Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Icon(
                              //   Icons.create,
                              //   color: Colors.yellow,
                              // ),
                              const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/113645889?v=4')),
                              Text(" Criado por ",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.lightBlueAccent[100])),

                              const Text("Eduardo Pedroso",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white)), // text
                            ]),
                        const SizedBox(
                          height: 60,
                        ),
                      ],
                    )),
              ),

              // LinearProgressIndicator(
              //   value: progress,
              //   minHeight: 10,
              //   backgroundColor: Colors.yellow,
              //   color: Colors.orange,
              //   //valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
              // )
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

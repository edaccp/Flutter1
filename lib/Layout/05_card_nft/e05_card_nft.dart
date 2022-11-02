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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Row(children: [
                          const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/113645889?v=4')),
                          Text(" Criado por ",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.lightBlueAccent[100])),

                          const Text("Eduardo Pedroso",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.white)), // text
                        ]),
                        const SizedBox(
                          height: 60,
                        ),
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}

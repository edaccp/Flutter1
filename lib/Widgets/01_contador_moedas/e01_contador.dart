/*# M02 - A05 - Exercício 1 - Contador de Moedas
[](https://i.imgur.com/xG74tOh.png)

## Objetivo
Desenvolver um aplicativo que faça a contagem dos cliques do usuário na tela e
 mostre a quantidade de “moedas” adquiridas a cada clique, utilizando setState.

## Instruções
1. Crie uma aplicação em Flutter que rode a classe Coin.
2. Ainda no arquivo main, crie a classe Coin, responsável por receber cada clique
 do usuário na tela e atualizar a quantidade de “moedas”.
3. A cada clique na tela, o usuário recebe uma “moeda de cobre”, 
ou "copper coin”.
4. Quando alcançar 10 copper, o usuário recebe 1 “moeda de prata”, 
ou “silver coin” e zera as "copper coin”.
5. Quando alcançar 10 silver, o usuário recebe 1 “moeda de ouro”, 
ou “gold coin” e zera as "silver coin”.
6. Mostre as atualizações de cada clique e a quantidade de “moedas” 
que o usuário tem.
```
Entrada:
    cliques: 9
Saída:
    Copper: 9
    Silver: 0
    Gold: 0
```
```
Entrada:
    cliques: 10
Saída:
    Copper: 0
    Silver: 1
    Gold: 0
```
```
Entrada:
    cliques: 11
Saída:
    Copper: 1
    Silver: 1
    Gold: 0
```
```
Entrada:
    cliques: 101
Saída:
    Copper: 1
    Silver: 0
    Gold: 1
```
---
### [Vídeo explicativo](https://drive.google.com/file/d/1CKL15gRVUu9hvm_fymNkiS9MEvs_b_m0/view?usp=sharing)
*/

import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  runApp(const MyCoin());
}

class MyCoin extends StatefulWidget {
  const MyCoin({super.key});

  @override
  State<MyCoin> createState() => _MyCoinState();
}

class _MyCoinState extends State<MyCoin> {
  num copper = 0;
  num silver = 0;
  num gold = 0;

  void coinCount() {
    setState(() {
      copper++;
      if (copper == 10) {
        silver++;
        copper = 0;
      }
      if (silver == 10) {
        gold++;
        silver = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: coinCount,
        child: Text(
          'Copper $copper \n Silver $silver\n Gold $gold',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

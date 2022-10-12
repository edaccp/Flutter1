/*# M02 - A03 - Exercício 2 - Reuso de Component
![](https://i.imgur.com/xG74tOh.png)

## Objetivo

Criar um componente que pode ser reutilizado para criar novos blocos coloridos, com diferentes cores e tamanhos.

## Instruções

1. Crie uma aplicação em Flutter que rode a classe MyComponent.

2. Crie a classe MyComponent, responsável por criar blocos coloridos, com tamanhos variados.

3. Crie a classe Block, que será chamada na classe MyComponent.

4. Utilizando a classe Block, crie os blocos com as cores e tamanhos, conforme a imagem de exemplo:

![](https://i.imgur.com/KIrhIhW.png)

---

### [Vídeo explicativo](https://drive.google.com/file/d/12bXWKZOyIfcPl1dpaMXl7e21HqBvnl2V/view?usp=sharing)
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

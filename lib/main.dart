import 'package:flutter/material.dart';
import 'package:patterns_project/factory_button/factory_button.dart';

import 'factory_button/i_action_button.dart';

// Tela de detalhes de produtos
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
          child: WDButtonFactory.createWDButton(
        action: ActionsButtonModel(
          child: const Text("Meu botão de teste"),
          onPress: () => print('Fui pressionado'),
        ),
      )),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: 'Exemplo de Factory Method',
      home: MyHomePage(),
    ),
  );
}

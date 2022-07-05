import 'package:flutter/material.dart';

class BotaoAnimado extends StatelessWidget {
  const BotaoAnimado({
    Key? key,
    required this.cor,
    required this.icone,
    required this.largura,
    required this.altura,
    required this.aoclicar,
  }) : super(key: key);

  final Color cor;
  final Icon icone;
  final double largura;
  final double altura;
  final VoidCallback aoclicar;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: cor, shape: BoxShape.circle),
      width: largura,
      height: altura,
      child: IconButton(
        icon: icone,
        enableFeedback: true,
        onPressed: aoclicar,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'ui/estilo/estilotexto.dart';
import 'ui/elementos/cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://avatars.githubusercontent.com/u/58399267?v=4"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Olá',
                              style: TextoStyles.textoMenores,
                            ),
                            Text(
                              'Débora!',
                              style: TextoStyles.textoMaior,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Parabéns! Esse mês você fez',
                        style: TextoStyles.textoSimples,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Carde1(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Carde2(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  const CircularButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.color,
      required this.icon,
      required this.onClick})
      : super(key: key);

  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(icon: icon, enableFeedback: true, onPressed: onClick),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

class Colores {
  static const primaria = Color.fromARGB(255, 43, 17, 104);
  static const secondaria = Color.fromARGB(255, 93, 36, 192);
  static const carde = Color.fromARGB(255, 233, 227, 247);
  static const detalhes = Color.fromARGB(255, 41, 16, 66);
}

class TextoStyles {
  static final textoMenores = GoogleFonts.patrickHand(
      //ver o que é fontWeight
      fontSize: 25,
      color: Colores.secondaria,
      fontWeight: FontWeight.w700);

  static final textoMaior = GoogleFonts.patrickHand(
      fontSize: 65, color: Colores.primaria, fontWeight: FontWeight.bold);

  static final numeroMenor = GoogleFonts.concertOne(
      fontSize: 25, color: Colores.detalhes, fontWeight: FontWeight.w500);

  static final textoSimples = GoogleFonts.patrickHand(
      fontSize: 20, color: Colores.secondaria, fontWeight: FontWeight.w500);

  static final textodinheiro = GoogleFonts.patrickHand(
      fontSize: 22, color: Colores.primaria, fontWeight: FontWeight.w500);

  static final dinheiro =
      GoogleFonts.concertOne(fontSize: 29, color: Colores.secondaria);
}

class Carde1 extends StatelessWidget {
  const Carde1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _pedidos = 12;
    int _clientes = 20;
    int _cidades = 20;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colores.carde,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 170, 167, 170).withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(2, 2),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 12,
          right: 22,
          left: 22,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$_pedidos",
                  style: TextoStyles.numeroMenor,
                ),
                const Icon(
                  Icons.shop_2,
                  size: 45,
                  color: Colores.primaria,
                ),
                Column(
                  children: [
                    Text("novos", style: TextoStyles.textoSimples),
                    Text("pedidos", style: TextoStyles.textoSimples)
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$_clientes",
                  style: TextoStyles.numeroMenor,
                ),
                const Icon(
                  Icons.people_alt,
                  size: 45,
                  color: Colores.primaria,
                ),
                Column(
                  children: [
                    Text("novos", style: TextoStyles.textoSimples),
                    Text("clientes", style: TextoStyles.textoSimples)
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$_cidades",
                  style: TextoStyles.numeroMenor,
                ),
                const Icon(
                  Icons.location_city,
                  size: 45,
                  color: Colores.primaria,
                ),
                Column(
                  children: [
                    Text("novas", style: TextoStyles.textoSimples),
                    Text("cidades", style: TextoStyles.textoSimples)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Carde2 extends StatelessWidget {
  const Carde2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _quantia = 34000;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colores.carde,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 170, 167, 170).withOpacity(0.8),
              blurRadius: 2,
              spreadRadius: 2,
              offset: const Offset(2, 2),
            )
          ]),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 38, bottom: 38, right: 28, left: 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.shop_2,
              size: 65,
              color: Colores.primaria,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "R\$ ${_quantia}0",
                  style: TextoStyles.dinheiro,
                ),
                Text("em novos pedidos", style: TextoStyles.textodinheiro),
              ],
            )
          ],
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

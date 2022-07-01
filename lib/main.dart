import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'ui/estilo/estilotexto.dart';
import 'ui/elementos/cards.dart';
import 'ui/estilo/cores.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

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
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: false,
          itemCornerRadius: 15,
          backgroundColor: Colors.white,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: [
            BottomNavyBarItem(
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              title: Text(
                "Home",
                style: TextoStyles.textoSimples,
              ),
              activeColor: Colores.primaria,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
                icon: const Icon(Icons.shop_2, size: 30),
                title: Text(
                  "Loja",
                  style: TextoStyles.textoSimples,
                ),
                activeColor: Colores.primaria,
                textAlign: TextAlign.center),
            BottomNavyBarItem(
                icon: const Icon(Icons.people_alt, size: 30),
                title: Text(
                  "Pessoas",
                  style: TextoStyles.textoSimples,
                ),
                activeColor: Colores.primaria,
                textAlign: TextAlign.center),
            BottomNavyBarItem(
                icon: const Icon(Icons.escalator, size: 30),
                title: Text(
                  "Dados",
                  style: TextoStyles.textoSimples,
                ),
                activeColor: Colores.primaria,
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

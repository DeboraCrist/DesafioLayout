import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'ui/estilo/estilotexto.dart';
import 'ui/elementos/card1.dart';
import 'ui/elementos/card2.dart';
import 'ui/estilo/cores.dart';
import 'ui/elementos/botao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  int _indiceAtual = 0;
  Icon _olhoEsconde = const Icon(Icons.visibility);
  bool aoclicar = false;

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
                      IconButton(
                        icon: _olhoEsconde,
                        iconSize: 35,
                        color: Colores.olho,
                        onPressed: () {
                          setState(() => {
                                if (!aoclicar)
                                  {
                                    _olhoEsconde =
                                        const Icon(Icons.visibility_off),
                                    aoclicar = true
                                  }
                                else
                                  {
                                    _olhoEsconde = const Icon(Icons.visibility),
                                    aoclicar = false
                                  }
                              });
                        },
                      )
                    ],
                  ),
                  Carde1(
                    esconderDados: aoclicar,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Carde2(
                    esconderDados: aoclicar,
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          showElevation: false,
          selectedIndex: _indiceAtual,
          itemCornerRadius: 15,
          backgroundColor: Colors.white,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _indiceAtual = index),
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
              textAlign: TextAlign.center,
              //cor da logo
              activeColor: Colores.primaria,
            ),
            BottomNavyBarItem(
                icon: const Icon(Icons.shop_2, size: 30),
                title: Text(
                  "Loja",
                  style: TextoStyles.textoSimples,
                ),
                textAlign: TextAlign.center,
                activeColor: Colores.primaria),
            BottomNavyBarItem(
                icon: const Icon(Icons.people_alt, size: 30),
                title: Text(
                  "Pessoas",
                  style: TextoStyles.textoSimples,
                ),
                textAlign: TextAlign.center,
                activeColor: Colores.primaria),
            BottomNavyBarItem(
                icon: const Icon(Icons.escalator, size: 30),
                title: Text(
                  "Dados",
                  style: TextoStyles.textoSimples,
                ),
                textAlign: TextAlign.center,
                activeColor: Colores.primaria),
          ],
        ),
      ),
    );
  }
}

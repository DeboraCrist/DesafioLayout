import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'ui/estilo/estilotexto.dart';
import 'ui/elementos/card1.dart';
import 'ui/elementos/card2.dart';
import 'ui/estilo/cores.dart';
import 'ui/elementos/botao.dart';
import 'ui/estilo/temas.dart';

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
  bool _claro = true;

  late AnimationController controladorAnimado;
  late Animation umaTranslacaoAnimada;

  double getRadiansFromDegree(double degree) {
    double radiano = 57.295779513;
    return degree / radiano;
  }

  @override
  void initState() {
    controladorAnimado = AnimationController(
        vsync: this, duration: const Duration(microseconds: 200));
    //onde comeca
    umaTranslacaoAnimada =
        Tween(begin: 0.0, end: 1.0).animate(controladorAnimado);
    super.initState();
    controladorAnimado.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _claro ? tema : temaNoturno,
      home: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(22),
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
                              ),
                              Switch(
                                  value: _claro,
                                  onChanged: (state) {
                                    setState(() {
                                      _claro = state;
                                    });
                                  })
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
                          iconSize: 34,
                          color: Cores.olho,
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
                                      _olhoEsconde =
                                          const Icon(Icons.visibility),
                                      aoclicar = false
                                    }
                                });
                          },
                        ),
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
            Positioned(
              right: 20,
              bottom: 20,
              child: Stack(
                children: [
                  //onde o botao esta posicionado, no angulo
                  //e se está mais perto ou não do botao central
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(275),
                        umaTranslacaoAnimada.value * 95),
                    child: BotaoAnimado(
                      cor: const Color.fromARGB(255, 74, 66, 105),
                      largura: 45,
                      altura: 45,
                      icone: const Icon(
                        Icons.people_alt,
                        color: Colors.white,
                      ),
                      aoclicar: () => {},
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(225),
                        umaTranslacaoAnimada.value * 95),
                    child: BotaoAnimado(
                      cor: const Color.fromARGB(255, 74, 66, 105),
                      largura: 45,
                      altura: 45,
                      icone: const Icon(
                        Icons.shop_2,
                        color: Colors.white,
                      ),
                      aoclicar: () => {},
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(170),
                        umaTranslacaoAnimada.value * 95),
                    child: BotaoAnimado(
                      cor: const Color.fromARGB(255, 74, 66, 105),
                      largura: 45,
                      altura: 45,
                      icone: const Icon(
                        Icons.location_city,
                        color: Colors.white,
                      ),
                      aoclicar: () => {},
                    ),
                  ),
                  BotaoAnimado(
                    cor: Cores.primaria,
                    largura: 53,
                    altura: 53,
                    icone: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    aoclicar: () => {
                      if (controladorAnimado.isCompleted)
                        {controladorAnimado.reverse()}
                      else
                        {controladorAnimado.forward()}
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _indiceAtual,
          showElevation: false,
          itemCornerRadius: 15,
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
              activeColor: Cores.primaria,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
                icon: const Icon(Icons.shop_2, size: 30),
                title: Text(
                  "Loja",
                  style: TextoStyles.textoSimples,
                ),
                activeColor: Cores.primaria,
                textAlign: TextAlign.center),
            BottomNavyBarItem(
                icon: const Icon(Icons.people_alt, size: 30),
                title: Text(
                  "Pessoas",
                  style: TextoStyles.textoSimples,
                ),
                activeColor: Cores.primaria,
                textAlign: TextAlign.center),
            BottomNavyBarItem(
                icon: const Icon(Icons.escalator, size: 30),
                title: Text(
                  "Dados",
                  style: TextoStyles.textoSimples,
                ),
                activeColor: Cores.primaria,
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import '/ui/estilo/estilotexto.dart';
import '/ui/elementos/card1.dart';
import '/ui/elementos/card2.dart';
import '/ui/estilo/cores.dart';
import '/ui/elementos/botao.dart';

class Escuro extends StatefulWidget {
  const Escuro({Key? key}) : super(key: key);

  @override
  State<Escuro> createState() => _EscuroState();
}

class _EscuroState extends State<Escuro> with SingleTickerProviderStateMixin {
  int _indiceAtual = 0;
  Icon _olhoEsconde = const Icon(Icons.visibility);
  bool aoclicar = false;

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
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
            Positioned(
              right: 10,
              bottom: 10,
              child: Stack(
                children: [
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(270),
                        umaTranslacaoAnimada.value * 100),
                    child: BotaoAnimado(
                      cor: const Color.fromARGB(255, 170, 167, 170)
                          .withOpacity(0.8),
                      largura: 55,
                      altura: 55,
                      icone: const Icon(
                        Icons.shop_2,
                        color: Colors.white,
                      ),
                      // ignore: avoid_print
                      aoclicar: () => {print("pedidos")},
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(225),
                        umaTranslacaoAnimada.value * 100),
                    child: BotaoAnimado(
                      cor: Cores.primaria,
                      largura: 55,
                      altura: 55,
                      icone: const Icon(
                        Icons.people_alt,
                        color: Colors.white,
                      ),
                      // ignore: avoid_print
                      aoclicar: () => {print("clientes")},
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.fromDirection(getRadiansFromDegree(180),
                        umaTranslacaoAnimada.value * 100),
                    child: BotaoAnimado(
                      cor: Cores.primaria,
                      largura: 55,
                      altura: 55,
                      icone: const Icon(
                        Icons.location_city,
                        color: Colors.white,
                      ),
                      // ignore: avoid_print
                      aoclicar: () => {print("cidades")},
                    ),
                  ),
                  BotaoAnimado(
                    cor: Cores.primaria,
                    largura: 55,
                    altura: 55,
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
          backgroundColor: Colors.white,
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

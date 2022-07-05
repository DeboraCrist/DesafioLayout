import 'package:flutter/material.dart';
import 'package:prova_application_1/ui/estilo/cores.dart';
import 'package:prova_application_1/ui/estilo/estilotexto.dart';

class Carde1 extends StatelessWidget {
  final bool esconderDados;

  const Carde1({Key? key, required this.esconderDados}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _pedidos = 12;
    int _clientes = 20;
    int _cidades = 20;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Cores.carde,

          //borda do fundo
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
          top: 8,
          bottom: 8,
          right: 25,
          left: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (esconderDados)
                  Text(
                    "*",
                    style: TextoStyles.numeroMenor,
                  )
                else
                  Text(
                    "$_pedidos",
                    style: TextoStyles.numeroMenor,
                  ),
                const SizedBox(height: 8),
                const Icon(
                  Icons.shop_2,
                  size: 47,
                  color: Cores.primaria,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                if (esconderDados)
                  Text(
                    "*",
                    style: TextoStyles.numeroMenor,
                  )
                else
                  Text(
                    "$_clientes",
                    style: TextoStyles.numeroMenor,
                  ),
                const SizedBox(
                  height: 10,
                ),
                const Icon(
                  Icons.people_alt,
                  size: 45,
                  color: Cores.primaria,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                if (esconderDados)
                  Text(
                    "*",
                    style: TextoStyles.numeroMenor,
                  )
                else
                  Text(
                    "$_cidades",
                    style: TextoStyles.numeroMenor,
                  ),
                const SizedBox(
                  height: 10,
                ),
                const Icon(
                  Icons.location_city,
                  size: 45,
                  color: Cores.primaria,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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

import 'package:flutter/material.dart';
import 'package:prova_application_1/ui/estilo/cores.dart';
import 'package:prova_application_1/ui/estilo/estilotexto.dart';

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

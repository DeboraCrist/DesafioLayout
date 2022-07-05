import 'package:flutter/material.dart';
import 'package:prova_application_1/ui/estilo/cores.dart';
import 'package:prova_application_1/ui/estilo/estilotexto.dart';

class Carde2 extends StatelessWidget {
  final bool esconderDados;

  const Carde2({Key? key, required this.esconderDados}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _quantia = 34000.00;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Cores.carde,
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
            const EdgeInsets.only(top: 36, bottom: 36, right: 28, left: 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.shop_2,
              size: 65,
              color: Cores.primaria,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                esconderDados
                    ? Text(
                        "R\$ _,__",
                        style: TextoStyles.dinheiro,
                      )
                    : Text(
                        "R\$ ${_quantia}0",
                        style: TextoStyles.dinheiro,
                      ),
                Text("em novos pedidos", style: TextoStyles.textodinheiro)
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cores.dart';

class TextoStyles {
  static final textoMenores = GoogleFonts.patrickHand(
      //ver o que é fontWeight
      fontSize: 25,
      fontWeight: FontWeight.w700);

  static final textoMaior = GoogleFonts.patrickHand(
      fontSize: 65, color: Cores.primaria, fontWeight: FontWeight.bold);

  static final numeroMenor = GoogleFonts.concertOne(
    fontSize: 20,
    color: Cores.olho,
    fontWeight: FontWeight.w200,
  );

  static final textoSimples =
      GoogleFonts.patrickHand(fontSize: 20, fontWeight: FontWeight.w700);

  static final textodinheiro = GoogleFonts.patrickHand(
      fontSize: 22, color: Cores.primaria, fontWeight: FontWeight.w700);

  static final dinheiro = GoogleFonts.concertOne(fontSize: 35);
}

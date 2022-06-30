import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cores.dart';

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

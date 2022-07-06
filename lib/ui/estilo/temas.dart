import 'package:flutter/material.dart';
import 'package:prova_application_1/ui/estilo/cores.dart';

final tema = ThemeData(
  brightness: Brightness.light,
  accentColor: const Color.fromARGB(255, 52, 36, 192),
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Cores.secondaria),
    headline4: TextStyle(
      color: Cores.primaria,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Cores.primaria,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
);

ThemeData temaNoturno = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Colors.white),
    headline4: TextStyle(
      color: Colors.white,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
  ),
);

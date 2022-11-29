import 'package:flutter/material.dart';

//Criacao da cor verde
Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(139, 195, 74, 0.1),
  100: const Color.fromRGBO(139, 195, 74, 0.2),
  200: const Color.fromRGBO(139, 195, 74, 0.3),
  300: const Color.fromRGBO(139, 195, 74, 0.4),
  400: const Color.fromRGBO(139, 195, 74, 0.5),
  500: const Color.fromRGBO(139, 195, 74, 0.6),
  600: const Color.fromRGBO(139, 195, 74, 0.7),
  700: const Color.fromRGBO(139, 195, 74, 0.8),
  800: const Color.fromRGBO(139, 195, 74, 0.9),
  900: const Color.fromRGBO(139, 195, 74, 1),
};

Map<int, Color> _blueOpacity = {
  50: const Color.fromRGBO(42, 55, 74, 0.1),
  100: const Color.fromRGBO(42, 55, 74, 0.2),
  200: const Color.fromRGBO(42, 55, 74, 0.3),
  300: const Color.fromRGBO(42, 55, 74, 0.4),
  400: const Color.fromRGBO(42, 55, 74, 0.5),
  500: const Color.fromRGBO(42, 55, 74, 0.6),
  600: const Color.fromRGBO(42, 55, 74, 0.7),
  700: const Color.fromRGBO(42, 55, 74, 0.8),
  800: const Color.fromRGBO(42, 55, 74, 0.9),
  900: const Color.fromRGBO(42, 55, 74, 1),
};

abstract class CustomColor {
  static Color customRed = Colors.red.shade700;
  static Color customBlue = const Color.fromRGBO(42, 55, 74, 1);
  static Color customGrey = const Color.fromRGBO(126, 126, 126, 1);
  static Color customOrange = const Color.fromRGBO(234, 112, 1, 1);
  static Color customPink = const Color.fromRGBO(250, 87, 145, 1);
  static Color customWhite = Colors.white;
  static Color customBlack = const Color.fromRGBO(0, 0, 0, 1);
  static MaterialColor customGreen = MaterialColor(0xff8bc34a, _swatchOpacity);
  static MaterialColor customBluee = MaterialColor(0xFF2A374A, _blueOpacity);
}

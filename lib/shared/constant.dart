import 'package:flutter/material.dart';

const MaterialColor kPrimaryColor = MaterialColor(
  0xFF00BCC8,
  <int, Color>{
    50: Color(0xFF00BCC8),
    100: Color(0xFF00BCC8),
    200: Color(0xFF00BCC8),
    300: Color(0xFF00BCC8),
    400: Color(0xFF00BCC8),
    500: Color(0xFF00BCC8),
    600: Color(0xFF00BCC8),
    700: Color(0xFF00BCC8),
    800: Color(0xFF00BCC8),
    900: Color(0xFF00BCC8),
  },
);
const linear = Color(0xFF00BCC8);
const kLightColor = Color(0xFFE7EEFB);
const kDefaultPadding = 24.0;
const kLessPadding = 10.0;
const kFixPadding = 16.0;
const kLess = 4.0;

const kShape = 30.0;

const kRadius = 0.0;
const kAppBarHeight = 56.0;
final menuLabel = [
  'Masuk',
  'Keluar',
  'Pindah',
  'Mutasi',
  'Kurs',
];
final List<String> MenuImage = [
  "assets/masuk.png",
  "assets/keluar.png",
  "assets/pindah.png",
  "assets/mutasi.png",
  "assets/kurs.png",
];
final menuIcons = [
  Icons.camera,
  Icons.home,
  Icons.headset,
  Icons.games,
  Icons.book
  // const ImageIcon(AssetImage('assets/masuk.png')),
  // const ImageIcon(AssetImage('assets/keluar.png')),
  // const ImageIcon(AssetImage('assets/pindah.png')),
  // const ImageIcon(AssetImage('assets/mutasi.png')),
  // const ImageIcon(AssetImage('assets/kurs.png')),
];
const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
  ),
);

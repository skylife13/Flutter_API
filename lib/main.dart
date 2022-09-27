import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_api/Home.dart';
import 'package:flutter_api/menu_outlet/Keluar.dart';
import 'package:flutter_api/menu_outlet/Mutasi.dart';
import 'package:flutter_api/menu_outlet/Pindah.dart';
import 'package:flutter_api/menu_outlet/kurs.dart';
import 'package:flutter_api/shared/constant.dart';

import 'menu_outlet/masuk.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        accentColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      home: Home(),
      routes: {
        Home.routeName: (ctx) => const Home(),
        Masuk.routeName: (ctx) => const Masuk(),
        Keluar.routeName: (ctx) => const Keluar(),
        Pindah.routeName: (ctx) => const Pindah(),
        Mutasi.routeName: (ctx) => const Mutasi(),
        Kurs.routeName: (ctx) => const Kurs(),
      },
    );
  }
}

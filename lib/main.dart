import 'package:curriculo/src/config/custom_colors.dart';
import 'package:curriculo/src/pages/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: CustomColor.customBluee,
      ),
      home: const HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:introduction/my_portofolio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portofolio',
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.purple,
        ),
      ),
      home: const MyPortofolioScreen(),
    );
  }
}

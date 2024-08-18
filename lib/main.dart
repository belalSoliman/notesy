import 'package:flutter/material.dart';
import 'package:notesy/views/home_page.dart';

void main() {
  runApp(const Notesy());
}

class Notesy extends StatelessWidget {
  const Notesy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

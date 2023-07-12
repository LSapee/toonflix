import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen_toon.dart';

void main() {
  runApp(const webToonApp());
}

class webToonApp extends StatelessWidget {
  const webToonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreenToon(),
    );
  }
}

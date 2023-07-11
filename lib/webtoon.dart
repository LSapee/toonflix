import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen_toon.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreenToon(),
    );
  }
}

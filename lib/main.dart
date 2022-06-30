import 'package:flutter/material.dart';
import 'package:venotify/screens/loading_screen.dart';
import 'package:venotify/screens/welcome_screen.dart';

void main() {
  runApp(const Venotify());
}

class Venotify extends StatelessWidget {
  const Venotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}

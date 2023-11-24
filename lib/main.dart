import 'package:cc206_kaon_/features/Log-in_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromRGBO(145, 199, 137, 1)),
          useMaterial3: true,
        ),
        home: const LoginPage());
  }
}

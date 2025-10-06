import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

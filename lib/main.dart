import 'package:flutter/material.dart';
import 'package:todoey/pages/home_page.dart';

main() => runApp(const Todoey());

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

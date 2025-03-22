import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/pages/home_page.dart';

import 'models/data.dart';

main() => runApp(const Todoey());

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Data(),
        child: const MaterialApp(
          home: HomePage(),
        ));
  }
}

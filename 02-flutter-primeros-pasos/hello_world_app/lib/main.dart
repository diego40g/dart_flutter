import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Add super.key

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Add const because the widget is immutable not dinamic
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red
      ),
      home: const CounterFunctionsScreen()
    );
  }
}

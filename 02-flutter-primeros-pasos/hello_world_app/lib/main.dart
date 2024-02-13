import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Add super.key

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( // Add const because the widget is immutable not dinamic
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text('Hello World')),
      )
    );
  }
}

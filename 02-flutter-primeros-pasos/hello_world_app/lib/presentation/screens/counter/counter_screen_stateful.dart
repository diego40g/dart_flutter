import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  
  @override
  State<CounterScreen> createState() => _CounterScreenState();
  }

class _CounterScreenState extends State<CounterScreen> {
  int clicCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clicCounter',style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            const Text('clicks', style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clicCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
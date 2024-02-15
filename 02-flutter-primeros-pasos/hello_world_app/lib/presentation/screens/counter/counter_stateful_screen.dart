import 'package:flutter/material.dart';

class CounterStatefulScreen extends StatefulWidget {
  const CounterStatefulScreen({super.key});
  
  @override
  State<CounterStatefulScreen> createState() => _CounterStatefulScreenState();
  }

class _CounterStatefulScreenState extends State<CounterStatefulScreen> {
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
            //Text(clicCounter == 1 ? 'click' : 'clicks', style: const TextStyle(fontSize: 25),),
            Text('Clic${clicCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25),),
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
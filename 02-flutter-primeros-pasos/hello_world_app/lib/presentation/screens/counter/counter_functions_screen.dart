import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});
  
  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
  }

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clicCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions Screen'),
        leading: IconButton(
          icon: const Icon(Icons.home), 
          onPressed: () {  },
        ),
        actions: [
          IconButton(
            onPressed: () { 
              setState(() {
                clicCounter=0;
              });
            }, 
            icon: const Icon(Icons.refresh_rounded)
          ),
          IconButton(
            onPressed: () { }, 
            icon: const Icon(Icons.more_vert)
          )
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon:Icons.plus_one,
            onPressed: () {
              setState(() {
                clicCounter++;
              });
            },
          ),
          
          const SizedBox(
            height: 10,
          ),
          
          CustomButton(
            icon:Icons.refresh_rounded,
            onPressed: () {
              clicCounter=0;
              setState(() {
              });
            },
          ),
          
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if(clicCounter == 0) return;
              setState(() {
                clicCounter--;
              });
            },
          ),
        ],)
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      backgroundColor: Colors.yellow[700],
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
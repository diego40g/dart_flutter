import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/1680157?v=4'),
          ),
        ),
        title: const Text('Diego Paz'),
        centerTitle: false,
      ),
    );
  }
}
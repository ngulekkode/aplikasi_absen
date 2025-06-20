import 'package:flutter/material.dart';

class ManagerHome extends StatelessWidget {
  const ManagerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Manager'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text('Selamat datang, Manager!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

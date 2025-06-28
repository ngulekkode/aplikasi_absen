import 'package:flutter/material.dart';

class EmployeHome extends StatelessWidget {
  const EmployeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Karyawan'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          'Selamat datang, Karyawan!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

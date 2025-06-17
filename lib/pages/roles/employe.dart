import 'package:flutter/material.dart';

class LoginKaryawan extends StatelessWidget {
  final VoidCallback onTap;
  const LoginKaryawan({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: Image.asset('assets/karyawan.png', width: 400, height: 400, fit: BoxFit.contain,)),
        const SizedBox(height: 5),
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            elevation: 6,
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              
            ),
          ),
          child: const Text(
            'Karyawan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class LoginManager extends StatelessWidget {
  final VoidCallback onTap;
  const LoginManager({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(child: Image.asset('assets/manager.png', width: 400, height: 400, fit: BoxFit.contain,)),
        const SizedBox(height: 5),
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            'Manager',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

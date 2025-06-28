import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  final String role;

  const LoginPage({super.key, required this.role});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nikController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _rememberMe = false;

  void _handleLogin() {
    String nik = _nikController.text;
    String password = _passwordController.text;
    String role = widget.role;

    // Dummy login logic
    // if (nik == '123' && password == 'abc') {
    if (role == 'manager') {
      context.go('/home/manager');
    } else {
      context.go('/home/karyawan');
    }
    // } else {
    //   ScaffoldMessenger.of(
    //     context,
    //   ).showSnackBar(SnackBar(content: Text('Login gagal untuk $role')));
    // }
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: Colors.black, width: 2),
    );

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 6),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),

            const Center(
              child: Text(
                'Login to your account',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // nik
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'NIK',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),

            TextField(
              controller: _nikController,
              decoration: const InputDecoration(
                hintText: 'NIK or Email',
                hintStyle: TextStyle(color: Colors.orange),
                border: border,
                focusedBorder: border,
                enabledBorder: border,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 12,
                ),
              ),
            ),

            const SizedBox(height: 10),

            //pasword
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),

            TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.orange),
                border: border,
                enabledBorder: border,
                focusedBorder: border,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 12,
                ),
                suffixIcon: GestureDetector(
                  onLongPress: () {
                    setState(() {
                      _obscurePassword = false;
                    });
                  },
                  onLongPressUp: () {
                    setState(() {
                      _obscurePassword = true;
                    });
                  },
                  child: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            // const SizedBox(height: 10),

            // cek box
            Row(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.red),
                  child: Checkbox(
                    value: _rememberMe,
                    onChanged: (val) {
                      setState(() {
                        _rememberMe = val ?? false;
                      });
                    },
                    activeColor: Colors.red,
                    checkColor: Colors.white,
                  ),
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),

            const SizedBox(height: 20),

            //Login Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _handleLogin,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadowColor: Colors.black54,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

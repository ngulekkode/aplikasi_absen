import 'package:absen_app/pages/roles/employe.dart';
import 'package:flutter/material.dart';
import 'package:absen_app/pages/roles/manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ChoiceRole extends StatefulWidget {
  const ChoiceRole({super.key});

  @override
  State<ChoiceRole> createState() => _HomeAppState();
}

class _HomeAppState extends State<ChoiceRole> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // max width for text
    final double maxTextWidth = 500;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _headerLoginTeks(screenWidth, maxTextWidth),
          // const SizedBox(height: 10),
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                LoginManager(
                  onTap: () {
                    // Navigasi ke halaman login manager
                  },
                ),
                LoginKaryawan(onTap: () {}),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: const WormEffect(
                activeDotColor: Colors.red,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _headerLoginTeks(double screenWidth, double maxTextWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 100),
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: screenWidth < maxTextWidth ? screenWidth : maxTextWidth,
            child: Text(
              'Selamat Datang di Presensi Online'.toUpperCase(),
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Text(
            'Login sebagai ?'.toUpperCase(),
            style: TextStyle(
              fontSize: 18,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Back button dan title
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10,
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Spacer(),
                  const Text(
                    'Setting',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),

            // Foto dan email
            const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(
                'assets/image 4.png',
              ), // ganti sesuai aset kamu
              backgroundColor: Colors.grey,
            ),
            const SizedBox(height: 8),
            const Text(
              'AdenaPutri@gmail.com',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 16),

            // Container biru
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: const Color(0xFF1A73E8), // biru
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildMenuItem(Icons.person, 'Informasi Pribadi'),
                    buildMenuItem(Icons.headset_mic, 'Hubungi Kami'),
                    buildMenuItem(
                      Icons.developer_mode,
                      'Pengembangan Aplikasi',
                    ),
                    buildMenuItem(Icons.description, 'Kebijakan Aplikasi'),
                    buildMenuItem(Icons.admin_panel_settings, 'Web Admin'),
                    buildMenuItem(Icons.qr_code, 'Kode Perusahaan'),
                    buildMenuItem(Icons.info_outline, 'Tentang'),
                    const Spacer(),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Arahkan ke fungsi logout Anda
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(200, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(icon, color: Color(0xFF4D5DFB)),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

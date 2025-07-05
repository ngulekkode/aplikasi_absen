import 'package:flutter/material.dart';

class DetailKaryawanPage extends StatelessWidget {
  const DetailKaryawanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF536DFE), // Warna latar belakang biru
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Detail Karyawan',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  'assets/profile.png',
                ), // ganti sesuai gambar profil
              ),
              const SizedBox(height: 12),
              const Text(
                'AdenaPutri@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              /// Ikon Media Sosial
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSocialIcon('assets/facebook.png', 'Facebook'),
                  _buildSocialIcon('assets/phone.png', 'Telepon'),
                  _buildSocialIcon('assets/google.png', 'Google'),
                  _buildSocialIcon('assets/instagram.png', 'Instagram'),
                ],
              ),
              const SizedBox(height: 30),

              /// Informasi Karyawan
              _buildInfoField(
                "Nama Perusahaan",
                "Swadharma Sarana Informatika",
              ),
              _buildInfoField("Email", "AdenaPutri@gmail.com"),
              _buildInfoField("Telepon", "08525524526"),
              _buildInfoField("Alamat", "Jln. Pembangunan Lama no. 70 Blok 7A"),
              _buildInfoField(
                "Pemberi Persetujuan",
                "swadharmainformatika@gmail.com",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              value,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(String assetPath, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 24,
          child: Image.asset(assetPath, height: 24),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.white)),
      ],
    );
  }
}

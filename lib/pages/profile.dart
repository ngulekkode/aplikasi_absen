import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color(0xFF1A73E8),
        elevation: 0,
        leading: BackButton(color: Colors.white),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage('assets/pp.png'), 
            ),
            const SizedBox(height: 12),
            const Text(
              'Adena Putri',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _SocialIcon(icon: FontAwesomeIcons.facebook, label: 'Facebook', onTap:() => (),),
                _SocialIcon(icon: FontAwesomeIcons.phone, label: 'Telepon', onTap: () => (),),
                _SocialIcon(icon: FontAwesomeIcons.google, label: 'Google',onTap: () => (),),
                _SocialIcon(icon: FontAwesomeIcons.instagram, label: 'Instagram',onTap: () => (),),
              ],
            ),
            const SizedBox(height: 24),
            _InfoField(label: 'Nama Perusahaan', value: 'ArisTech'),
            _InfoField(label: 'Email', value: 'Adena@gmail.com'),
            _InfoField(label: 'Telepon', value: '0812345678'),
            _InfoField(label: 'Alamat', value: 'Jl. Hartoyono'),
            _InfoField(label: 'Email Perusahaan', value: 'aristech@gmail.com'),
            const SizedBox(height: 24),
          ],
        ),
        
      ),
    );
  }
}

class _InfoField extends StatelessWidget {
  final String label;
  final String value;

  const _InfoField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            value,
            style: const TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _SocialIcon({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // borderRadius: BorderRadius.circular(26),
      child: Column(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white24,
            child: Icon(icon, color: Colors.black, size: 26),
          ),
          const SizedBox(height: 6),
          Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}

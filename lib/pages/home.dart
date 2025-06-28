import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String today = DateFormat('EEEE, d MMMM', 'id_ID').format(DateTime.now());
    String jam = DateFormat('HH:mm').format(DateTime.now());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A73E8),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF1A73E8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/avatar.png'),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Manager',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Adena Ayu Putrikarso',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          today,
                          style: const TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        _StatBox(
                          label: 'Hadir',
                          value: '28',
                          color: Colors.green,
                        ),
                        _StatBox(
                          label: 'Sakit',
                          value: '8',
                          color: Colors.blue,
                        ),
                        _StatBox(
                          label: 'Izin',
                          value: '3',
                          color: Colors.orange,
                        ),
                        _StatBox(
                          label: 'Absen',
                          value: '50',
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('assets/map_dummy.png'),
              ),
              onTap: () => context.goNamed('/leave'),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            '$jam AM',
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              _MenuButton(icon: Icons.fingerprint, label: 'HADIR'),
              _MenuButton(icon: Icons.attach_file, label: 'LAMPIRAN'),
            ],
          ),

          const SizedBox(height: 10),
          const Text(
            'Lokasi anda saat ini : Kantor',
            style: TextStyle(fontSize: 12),
          ),

          const SizedBox(height: 15),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Riwayat Absensi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
          ),

          const SizedBox(height: 8),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [
                _AbsenTile(
                  tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                  status: 'Pending',
                  tipe: 'Absen Masuk',
                ),
                _AbsenTile(
                  tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                  status: 'Pending',
                  tipe: 'Absen Keluar',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatBox extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _StatBox({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _MenuButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _MenuButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      icon: Icon(icon, size: 20),
      label: Text(label),
      onPressed: () {},
    );
  }
}

class _AbsenTile extends StatelessWidget {
  final String tanggal;
  final String status;
  final String tipe;

  const _AbsenTile({
    required this.tanggal,
    required this.status,
    required this.tipe,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF4B64D9),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: const Icon(Icons.receipt_long, color: Colors.white),
        title: Text(
          tanggal,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
        subtitle: Row(
          children: [
            Chip(
              label: Text(status),
              backgroundColor: Colors.redAccent,
              labelStyle: const TextStyle(color: Colors.white),
              visualDensity: VisualDensity.compact,
            ),
            const SizedBox(width: 8),
            Chip(
              label: Text(tipe),
              backgroundColor: Colors.teal.shade300,
              labelStyle: const TextStyle(color: Colors.white),
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
      ),
    );
  }
}

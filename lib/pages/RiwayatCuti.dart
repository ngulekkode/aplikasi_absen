import 'package:flutter/material.dart';

class RiwayatCutiScreen extends StatelessWidget {
  const RiwayatCutiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1, // default di tab Riwayat Cuti
      child: Scaffold(
        backgroundColor: const Color(0xFF3B52B4),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF3B52B4),
          elevation: 0,
          title: const Text(
            'Cuti',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Container(
              color: const Color(0xFF3B52B4),
              child: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                  insets: EdgeInsets.symmetric(horizontal: 30),
                ),
                tabs: const [
                  Tab(
                    child: Text(
                      'Pengajuan Cuti',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Riwayat Cuti',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'Pengajuan Cuti Screen',
                style: TextStyle(color: Colors.white),
              ),
            ),
            RiwayatCutiList(),
          ],
        ),
      ),
    );
  }
}

class RiwayatCutiList extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      'jenis': 'Sakit',
      'tanggal': 'Kamis, 16 Desember 2022',
      'durasi': '(1 hari Cuti)',
      'status': 'Disetujui',
    },
    {
      'jenis': 'Sakit',
      'tanggal': 'Kamis, 15 Desember 2022',
      'durasi': '(1 hari Cuti)',
      'status': 'Disetujui',
    },
    {
      'jenis': 'Sakit',
      'tanggal': 'Kamis, 15 Desember 2022',
      'durasi': '(1 hari Cuti)',
      'status': 'Disetujui',
    },
  ];

  RiwayatCutiList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              colors: [Color(0xFF3AE29A), Color(0xFF05A1EE)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['jenis']!,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  item['tanggal']!,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  item['durasi']!,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        item['status']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

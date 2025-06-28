import 'package:flutter/material.dart';

class LeaveRequestPage extends StatefulWidget {
  const LeaveRequestPage({super.key});

  @override
  State<LeaveRequestPage> createState() => _LeaveRequestPageState();
}

class _LeaveRequestPageState extends State<LeaveRequestPage> {
  String? selectedLeaveType;
  final List<String> leaveTypes = [
    'Cuti Tahunan',
    'Cuti Sakit',
    'Cuti Melahirkan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A63D9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A63D9),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Cuti', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            // Tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _tabItem('Pengajuan Cuti', true),
                _tabItem('Riwayat Cuti', false),
              ],
            ),

            const SizedBox(height: 20),

            // Info cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  _InfoCard('Sisa Cuti\n1 Hari', Colors.red),
                  _InfoCard('Kuota Cuti\n1 Hari', Colors.grey),
                  _InfoCard('Laporan\nTahunan', Colors.orange),
                  _InfoCard('Laporan\nBulanan', Colors.teal),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Calendar placeholder
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Pilih Tanggal',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    CalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2030),
                      onDateChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Jenis Cuti Dropdown
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Jenis Cuti *',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedLeaveType,
                        hint: const Text('Pilih Salah Satu'),
                        items: leaveTypes.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedLeaveType = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Lampiran Foto
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lampiran Foto *',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: const AssetImage('assets/avatar.png'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Tombol Batal dan Ajukan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Batal'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Ajukan'),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _tabItem(String title, bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          const SizedBox(height: 4),
          if (isActive) Container(height: 2, width: 60, color: Colors.white),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String text;
  final Color color;

  const _InfoCard(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}

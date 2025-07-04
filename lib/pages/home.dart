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
drawer: Drawer(
  child: Column(
    children: [
      // Header dengan nama & email
      UserAccountsDrawerHeader(
        accountName: Text("budi pelopor"),
        accountEmail: Text("hartoyono@example.com"),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.person, color: Colors.blue, size: 40),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4B64D9), Color(0xFF5AC8FA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      // Menu item utama
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Beranda'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.history),
        title: Text('Riwayat Absen'),
        onTap: () {
          Navigator.pushNamed(context, '/riwayat');
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Pengaturan'),
        onTap: () {
          // Tambahkan aksi pengaturan
        },
      ),
      const Divider(),

      // Bantuan atau info
      ListTile(
        leading: Icon(Icons.info_outline),
        title: Text('Tentang Aplikasi'),
        onTap: () {},
      ),

      const Spacer(),

      // Logout di bawah
      Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/pp.png'),
          ),
          title: Text("Keluar", style: TextStyle(color: Colors.red)),
          onTap: () {
            context.push('/start');
          },
        ),
      ),
    ],
  ),
),

      body: ListView(
        padding: EdgeInsets.zero,
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
                      backgroundImage: AssetImage('assets/pp.png'),
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
                child: Image.asset('assets/maps.jpg'),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                '$jam AM',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _MenuButton(
                icon: Icons.fingerprint,
                label: 'Absen Masuk',
                onPressed: () {
                  context.push('/done_presence');
                },
              ),
              _MenuButton(icon: Icons.attach_file, label: 'LAMPIRAN'),
            ],
          ),

          const SizedBox(height: 10),
          Center(
            child: Padding(
              padding: EdgeInsetsGeometry.only(left: 16, right: 16),
              child: const Text(
                'Lokasi anda saat ini : Kantor',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),

          const SizedBox(height: 15),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(onPressed: () {
                context.push('/history_absen');
              },
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
          ),
          const SizedBox(height: 8),

          Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Column(
              // padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [
                AbsenTile(
                  tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                  status: 'Pending',
                  tipe: 'Absen Masuk',
                ),
                AbsenTile(
                  tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                  status: 'Pending',
                  tipe: 'Absen Keluar',
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // create button lainnya for bottomsheet
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _BottomSheetButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled:
                      true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  backgroundColor: const Color.fromARGB(255, 239, 239, 239),
                  builder: (context) {
                    return FractionallySizedBox(
                      heightFactor: 0.3,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: GridView.count(
                          padding: EdgeInsets.all(4),
                          crossAxisCount: 4, // item baris
                          mainAxisSpacing: 16, 
                          crossAxisSpacing:4,
                          // childAspectRatio: 0.3,
                          // shrinkWrap: true,
                          physics:AlwaysScrollableScrollPhysics(),
                          children: [
                            _BottomSheetMenuItem(
                              icon: Icons.date_range_outlined,
                              label: 'Cuti',
                              onTap: () {
                                context.push('/cuti');
                              },
                            ),
                            _BottomSheetMenuItem(
                              icon: Icons.person,
                              label: 'Profil',
                              onTap: () {
                                context.push('/profile');
                              },
                            ),
                            _BottomSheetMenuItem(
                              icon: Icons.access_time_sharp,
                              label: 'Lembur',
                              onTap: () {
                                
                              },
                            ),
                            _BottomSheetMenuItem(
                              icon: Icons.sick_outlined,
                              label: 'Sakit',
                              onTap: () {
                                
                              },
                            ),
                            _BottomSheetMenuItem(
                              icon: Icons.help,
                              label: 'Bantuan',
                              onTap: () => {},
                            ),
                            _BottomSheetMenuItem(
                              icon: Icons.calendar_month_outlined,
                              label: 'Jadwal',
                              onTap: () => {},
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Lainnya'),
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _BottomSheetMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _BottomSheetMenuItem({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.transparent,
            child: Icon(icon, size: 30, color: Colors.blue),
          
          ),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

class _BottomSheetButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const _BottomSheetButton({required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      onPressed: onPressed,
      child: child,
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
  final void Function()? onPressed;

  const _MenuButton({required this.icon, required this.label, this.onPressed});

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
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
    );
  }
}

class AbsenTile extends StatelessWidget {
  final String tanggal;
  final String status;
  final String tipe;

  const AbsenTile({super.key,
    required this.tanggal,
    required this.status,
    required this.tipe,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      
      color: const Color(0xFF1A73E8),
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:absen_app/pages/home.dart';

class HistoryAbsen extends StatelessWidget {
  const HistoryAbsen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: context.pop,
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        centerTitle: true,
        title: Text(
          "Riwayat Absen",
          style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color(0xFF1A73E8),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Column(
            children: [
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
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
              AbsenTile(
                tanggal: 'Kamis, 14 Desember 2022 : 15:56',
                status: 'Pending',
                tipe: 'Absen Keluar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

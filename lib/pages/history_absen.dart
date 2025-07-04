import 'package:flutter/material.dart';

class HistoryAbsen extends StatelessWidget {
  const HistoryAbsen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            leading: BackButton(),
            centerTitle: true,
            title: Text("Riwayat Absen"),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ListKaryawanScreen extends StatefulWidget {
  const ListKaryawanScreen({super.key});

  @override
  State<ListKaryawanScreen> createState() => _ListKaryawanScreenState();
}

class _ListKaryawanScreenState extends State<ListKaryawanScreen> {
  final TextEditingController _searchController = TextEditingController();

  // Dummy data karyawan
  final List<Map<String, String>> employees = [
    {
      "name": "Adena Putri",
      "email": "AdenaPutri@gmail.com",
      "avatar": "assets/pp.png",
    },
    {
      "name": "Agus Pelopor Pelajar",
      "email": "AgusPelopor@gmail.com",
      "avatar": "assets/pp.png",
    },
    {
      "name": "Budi Area 21",
      "email": "Budi21@gmail.com",
      "avatar": "assets/pp.png",
    },
    {
      "name": "Ilham Hartoyono ",
      "email": "Ilhamhartoyono@gmail.com",
      "avatar": "assets/pp.png",
    },
  ];

  List<Map<String, String>> filteredEmployees = [];

  @override
  void initState() {
    super.initState();
    filteredEmployees = employees;
  }

  void _onSearchChanged(String value) {
    setState(() {
      filteredEmployees = employees
          .where(
            (e) =>
                e["name"]!.toLowerCase().contains(value.toLowerCase()) ||
                e["email"]!.toLowerCase().contains(value.toLowerCase()),
          )
          .toList();
    });
  }

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
        title: const Text('Karyawan', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Search Field
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _searchController,
                onChanged: _onSearchChanged,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search Karyawan',
                  hintStyle: TextStyle(color: Colors.grey),
                  icon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // List Karyawan
            Expanded(
              child: ListView.separated(
                itemCount: filteredEmployees.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final employee = filteredEmployees[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage(employee["avatar"]!),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                employee["name"]!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                employee["email"]!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.chevron_right, color: Colors.orange),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

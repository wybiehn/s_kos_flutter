import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String search = '';

  void showKosDetail() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Kos Melati Residence'),
        content: const Text(
          'Lokasi: Cirebon\n'
          'Harga: Rp850.000/bulan\n'
          'Ukuran: 3x4 meter\n\n'
          'Kos nyaman untuk mahasiswa, '
          'dilengkapi Wi-Fi dan area parkir.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Tutup'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final kosDitemukan = 'kos melati residence cirebon'.contains(
      search.toLowerCase().trim(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "S'Kos",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFFE6F0FF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Marketplace Kos Indonesia',
                  style: TextStyle(
                    color: Color(0xFF1769FF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Temukan kos yang pas, di mana pun Anda berada.',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text('Cari kos nyaman sesuai kebutuhan dan budget kamu.'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            onChanged: (value) {
              setState(() {
                search = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Cari kota atau nama kos...',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Kos yang tersedia',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          if (kosDitemukan)
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    color: const Color(0xFFDCEAFF),
                    child: const Icon(
                      Icons.bed,
                      size: 75,
                      color: Color(0xFF1769FF),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kos Melati Residence',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Cirebon'),
                        const SizedBox(height: 12),
                        const Text(
                          'Rp850.000 / bulan',
                          style: TextStyle(
                            color: Color(0xFF1769FF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        FilledButton(
                          onPressed: showKosDetail,
                          child: const Text('Lihat detail'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          else
            const Center(child: Text('Belum ada listing yang cocok.')),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ContohUsahaScreen extends StatelessWidget {
  const ContohUsahaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Usaha'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: 'Produk Barang', icon: Icon(Icons.shopping_bag)),
                Tab(text: 'Produk Jasa', icon: Icon(Icons.build)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildBarangList(),
                  _buildJasaList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBarangList() {
    final List<Map<String, String>> barang = [
      {'title': 'Kerajinan Tangan', 'desc': 'Produk kerajinan dari bahan bekas atau bambu.'},
      {'title': 'Makanan Ringan (Snack)', 'desc': 'Keripik singkong, makaroni pedas, atau kue kering.'},
      {'title': 'Pakaian (Fashion)', 'desc': 'Kaos sablon custom, tote bag, atau aksesoris.'},
      {'title': 'Produk Teknologi Tepat Guna', 'desc': 'Lampu tidur hias, alat penyiram tanaman otomatis sederhana.'},
    ];
    return ListView.builder(
      itemCount: barang.length,
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: const Icon(Icons.category, color: Colors.blue),
            title: Text(barang[index]['title']!),
            subtitle: Text(barang[index]['desc']!),
          ),
        );
      },
    );
  }

  Widget _buildJasaList() {
    final List<Map<String, String>> jasa = [
      {'title': 'Jasa Desain Grafis', 'desc': 'Pembuatan logo, poster, atau undangan.'},
      {'title': 'Jasa Servis Komputer/HP', 'desc': 'Perbaikan perangkat keras atau instalasi software.'},
      {'title': 'Jasa Cuci Sepatu/Helm', 'desc': 'Layanan pembersihan dan perawatan sepatu atau helm.'},
      {'title': 'Jasa Fotografi/Videografi', 'desc': 'Dokumentasi acara, foto produk, atau pembuatan konten video.'},
    ];
    return ListView.builder(
      itemCount: jasa.length,
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: const Icon(Icons.handyman, color: Colors.green),
            title: Text(jasa[index]['title']!),
            subtitle: Text(jasa[index]['desc']!),
          ),
        );
      },
    );
  }
}

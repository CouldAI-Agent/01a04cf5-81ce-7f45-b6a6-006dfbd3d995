import 'package:flutter/material.dart';

class MateriScreen extends StatelessWidget {
  const MateriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Materi Pembelajaran'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          _MateriCard(
            title: 'Pengertian Peluang Usaha',
            content: 'Peluang usaha adalah sebuah kesempatan untuk mencapai tujuan (keuntungan, uang, kekayaan) dengan cara melakukan usaha yang memanfaatkan berbagai sumber daya yang dimiliki.',
          ),
          SizedBox(height: 16),
          _MateriCard(
            title: 'Ciri-Ciri Peluang Usaha yang Baik',
            content: '- Orisinal dan tidak meniru.\n- Mengantisipasi perubahan, persaingan, dan kebutuhan pasar.\n- Sesuai dengan minat dan keinginan wirausaha.\n- Tingkat kelayakan usaha benar-benar teruji.\n- Bersifat ide kreatif dan inovatif.',
          ),
          SizedBox(height: 16),
          _MateriCard(
            title: 'Analisis SWOT',
            content: 'Metode perencanaan strategis yang digunakan untuk mengevaluasi kekuatan (Strengths), kelemahan (Weaknesses), peluang (Opportunities), dan ancaman (Threats) dalam suatu proyek atau suatu spekulasi bisnis.',
          ),
        ],
      ),
    );
  }
}

class _MateriCard extends StatelessWidget {
  final String title;
  final String content;

  const _MateriCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

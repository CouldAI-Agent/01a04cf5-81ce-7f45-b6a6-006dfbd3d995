import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/materi_screen.dart';
import 'screens/contoh_usaha_screen.dart';
import 'screens/quiz_screen.dart';

void main() {
  runApp(const PkkApp());
}

class PkkApp extends StatelessWidget {
  const PkkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peluang Usaha PKK',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/materi': (context) => const MateriScreen(),
        '/contoh': (context) => const ContohUsahaScreen(),
        '/quiz': (context) => const QuizScreen(),
      },
    );
  }
}

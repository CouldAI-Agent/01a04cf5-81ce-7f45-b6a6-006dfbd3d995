import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _quizCompleted = false;

  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'Apa kepanjangan dari S dalam analisis SWOT?',
      'options': ['Strength', 'System', 'Strategy', 'Source'],
      'answer': 'Strength',
    },
    {
      'question': 'Manakah berikut ini yang termasuk contoh usaha produk jasa?',
      'options': ['Keripik Pisang', 'Desain Logo', 'Kaos Sablon', 'Kerajinan Bambu'],
      'answer': 'Desain Logo',
    },
    {
      'question': 'Peluang usaha yang baik memiliki ciri-ciri di bawah ini, kecuali...',
      'options': ['Orisinal', 'Inovatif', 'Bersifat sementara', 'Tingkat kelayakan teruji'],
      'answer': 'Bersifat sementara',
    },
  ];

  void _answerQuestion(String selectedOption) {
    if (selectedOption == _questions[_currentQuestionIndex]['answer']) {
      _score += 1;
    }

    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex += 1;
      });
    } else {
      setState(() {
        _quizCompleted = true;
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _score = 0;
      _quizCompleted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuis Evaluasi'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _quizCompleted
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Kuis Selesai!',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Skor Anda: $_score dari ${_questions.length}',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: _restartQuiz,
                      child: const Text('Ulangi Kuis'),
                    ),
                  ],
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Pertanyaan ${_currentQuestionIndex + 1} dari ${_questions.length}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    _questions[_currentQuestionIndex]['question'],
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 32),
                  ...(_questions[_currentQuestionIndex]['options'] as List<String>)
                      .map((option) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                          alignment: Alignment.centerLeft,
                        ),
                        onPressed: () => _answerQuestion(option),
                        child: Text(option),
                      ),
                    );
                  }),
                ],
              ),
      ),
    );
  }
}

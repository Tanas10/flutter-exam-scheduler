import 'package:flutter/material.dart';
import '../assets/exam_data.dart';
import '../models/exam_model.dart';
import '../widgets/exam_grid.dart';
import '../widgets/sum_exams.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Exam> _exams = examsData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: ExamGrid(exam: _exams),
          ),

          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Center(child: SumExam(exam: _exams)),
          ),
        ],
      ),
    );
  }
}

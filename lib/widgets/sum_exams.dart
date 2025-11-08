import 'package:flutter/material.dart';

import '../models/exam_model.dart';

class SumExam extends StatelessWidget {
  final List<Exam> exam;

  const SumExam({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        'Вкупно испити: ${exam.length}',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}

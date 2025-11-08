import 'package:flutter/cupertino.dart';
import 'package:lab1/models/exam_model.dart';

import 'exam_card.dart';

class ExamGrid extends StatefulWidget {
  final List<Exam> exam;

  const ExamGrid({super.key, required this.exam});

  @override
  State<StatefulWidget> createState() => _ExamGridState();
}
class _ExamGridState extends State<ExamGrid> {
  @override
  Widget build(BuildContext context) {
    List<Exam> sortedExams = List.from(widget.exam)
      ..sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return SingleChildScrollView(
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: sortedExams.map((e) => ExamCard(exam: e)).toList(),
      ),
    );
  }
}

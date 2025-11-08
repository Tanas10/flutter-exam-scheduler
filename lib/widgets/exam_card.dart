
import 'package:flutter/material.dart';

import '../models/exam_model.dart';

class ExamCard extends StatelessWidget{
  final Exam exam;
  const ExamCard({super.key,required this.exam});

  Color _getExamCardColor(DateTime examDate) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final examDay = DateTime(examDate.year, examDate.month, examDate.day);

    if (examDay.isBefore(today)) {
      return Colors.red[200]!;
    } else if (examDay.isAtSameMomentAs(today)) {
      return Colors.green[200]!;
    } else {
      return Colors.blue[200]!;
    }
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/details", arguments: exam);
      },
      child: Card(
        color: _getExamCardColor(exam.dateTime),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(exam.name, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              Divider(thickness: 2,color: Colors.black,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.access_time_filled, color: Colors.blue),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exam.dateTime.toString().substring(0, 10),
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        exam.dateTime.toString().substring(11, 16),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(thickness: 2,color: Colors.black,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.meeting_room, color: Colors.blue),
                  SizedBox(width: 8),
                  Expanded(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: exam.rooms.map((room) {
                        final isLast = room == exam.rooms.last;
                        return Text(
                          isLast ? room : '$room, ',
                          style: TextStyle(fontSize: 20),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


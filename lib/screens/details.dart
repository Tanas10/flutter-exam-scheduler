import 'package:flutter/material.dart';
import '../models/exam_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  Color _getBackgroundColor(DateTime examDate) {
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

  String _getTimeRemaining(DateTime examDate) {
    final now = DateTime.now();
    final difference = examDate.difference(now);

    if (difference.isNegative) {
      return "Испитот е завршен";
    }

    final days = difference.inDays;
    final hours = difference.inHours % 24;

    return "$days дена, $hours часа";
  }

  @override
  Widget build(BuildContext context) {
    final exam = ModalRoute.of(context)!.settings.arguments as Exam;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _getBackgroundColor(exam.dateTime),
        title: Text("Детали за испитот"),
      ),
      body: Container(
        color: _getBackgroundColor(exam.dateTime),
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exam.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),Divider(thickness: 2,color: Colors.black,),
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
            ),
            Divider(thickness: 2,color: Colors.black,),
            SizedBox(height: 16),
            Text(
              "Време до испитот: ${_getTimeRemaining(exam.dateTime)}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

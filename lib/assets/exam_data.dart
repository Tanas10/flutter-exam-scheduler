import '../models/exam_model.dart';

final List<Exam> examsData = [
  Exam(
    id: 1,
    name: "Структурно програмирање",
    dateTime: DateTime.now().add(Duration(days: -2)),
    rooms: ["ТМФ 315", "Барака 1","ЛАБ.138"],
  ),
  Exam(
    id: 2,
    name: "Вовед во компјутерските науки",
    dateTime: DateTime.now().add(Duration(hours: 3)),
    rooms: ["Амфитеатар ТМФ", "224 МФ"],
  ),
  Exam(
    id: 3,
    name: "Мобилни информациски системи",
      dateTime: DateTime.now().add(Duration(days: 2)),
      rooms: ["223 ФЕИТ", "Барака 1","112 ФЕИТ"]
  ),
  Exam(
    id: 4,
    name: "Програмирање на видео игри",
    dateTime: DateTime.now().add(Duration(days: -7)),
    rooms: ["Амфитеатар ФИНКИ", "115 П","124 МФ"],
  ),
  Exam(
    id: 5,
    name: "Веројатност и статистика",
    dateTime: DateTime.now().add(Duration(hours: 2)),
    rooms: [ "115 ТМФ", "Амфитеатар ТМФ","Амфитеатар МФ"],
  ),
  Exam(
    id: 6,
    name: "Калкулус 1",
    dateTime: DateTime.now().add(Duration(days: 6)),
    rooms: ["Б3.2", "Б3.1","Б2.2","Б2.1"],
  ),
  Exam(
    id: 7,
    name: "Бизнис и менаџмент",
    dateTime: DateTime.now().add(Duration(days: -1)),
    rooms: ["Барака 1", "112 ФЕИТ","225 МФ"],
  ),
  Exam(
    id: 8,
    name: "Веб Програмирање",
    dateTime: DateTime.now().add(Duration(days: 12)),
    rooms: ["ТМФ 203", "223 ФЕИТ"],
  ),
  Exam(
    id: 9,
    name: "Бази на податоци",
    dateTime: DateTime.now().add(Duration(days: -12)),
    rooms: ["ТМФ 203", "224 МФ"],
  ),
  Exam(
    id: 10,
    name: "Напредно програмирање",
    dateTime: DateTime.now().add(Duration(hours: 8)),
    rooms: ["116 ТМФ", "216 ТМФ","ТМФ 315","117 ТМФ","203 ТМФ"],
  ),
];

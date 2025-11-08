class Exam {
  int id;
  String name;
  DateTime dateTime;
  List<String> rooms;

  Exam({
    required this.id,
    required this.name,
    required this.dateTime,
    required this.rooms,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'dateTime': dateTime,
    'rooms': rooms,
  };

  Exam.fromJson(Map<String, dynamic> data)
    : id = data['id'] as int,
      name = data['name'] as String,
      dateTime = DateTime.parse(data['dateTime'] as String),
      rooms = List<String>.from(data['rooms']);



}

import 'dart:convert';

class Taskmodel {
  late String title;
  late String description;
  late bool completed;

  Taskmodel({
    required this.title,
    required this.description,
    this.completed = false,
  });

  Map<String, dynamic> toJson() => {
    'title': title,
    'description': description,
    'completed': completed,
  };

  factory Taskmodel.fromJson(Map<String, dynamic> json) => Taskmodel(
    title: json['title'] as String,
    description: json['description'] as String,
    completed: json['completed'] as bool,
  );

  static String encodeList(List<Taskmodel> tasks) =>
      jsonEncode(tasks.map((elem) => elem.toJson()).toList());

  static List<Taskmodel> decodeList(String tasksJs) {
    final List<dynamic> decoded = jsonDecode(tasksJs);
    return decoded
        .map((elem) => Taskmodel.fromJson(elem as Map<String, dynamic>))
        .toList();
  }
}

import 'package:first_app/data/priority.dart';

class TodoList {
  final int id;
  final PriorityTodo priority;
  final String title;
  final String content;

  TodoList(
      {required this.priority,
      required this.title,
      required this.content,
      required this.id});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'priority': priority.label,
      'title': title,
      'content': content
    };
  }

  factory TodoList.fromMap(Map<String, dynamic> map) {
    return TodoList(
      id: map['id'],
      priority: PriorityExtension.fromString(map['priority']),
      title: map['title'],
      content: map['content'],
    );
  }
}

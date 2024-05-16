class TodoModel {
  final int id;
  final String title;
  final TodoStatus status;
  final DateTime createAt;
  final DateTime updatedAt;

  TodoModel({
    required this.id,
    required this.title,
    required this.status,
    required this.createAt,
    required this.updatedAt,
  });
}

enum TodoStatus {
  todo,
  doing,
  done,
}

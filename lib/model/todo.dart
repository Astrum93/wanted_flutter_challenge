class Todo {
  final String title;
  final TodoStatus status;
  final DateTime createAt;
  final DateTime updatedAt;

  Todo(
      {required this.title,
      required this.status,
      required this.createAt,
      required this.updatedAt});
}

enum TodoStatus {
  todo,
  doing,
  done,
}

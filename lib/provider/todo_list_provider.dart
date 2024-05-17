import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wanted_flutter_challenge/model/todo.dart';

part 'todo_list_provider.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  List<TodoModel> build() {
    return [];
  }

  void addTodo(String title) {
    final now = DateTime.now();
    final id = state.length;

    final todo = TodoModel.create(id: id, title: title, createdAt: now);
    state = [...state, todo];
  }

  TodoModel getTodo(int id) {
    return state.firstWhere((todo) => todo.id == id);
  }
}

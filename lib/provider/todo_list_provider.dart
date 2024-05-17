import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wanted_flutter_challenge/model/todo.dart';

part 'todo_list_provider.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  List<TodoModel> build() {
    return [];
  }
}

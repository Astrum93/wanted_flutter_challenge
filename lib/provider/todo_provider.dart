import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wanted_flutter_challenge/model/todo.dart';
import 'package:wanted_flutter_challenge/provider/todo_list_provider.dart';

part 'todo_provider.g.dart';

@riverpod
class Todo extends _$Todo {
  @override
  TodoModel build(int id) {
    return ref.read(todoListProvider.notifier).getTodo(id);
  }
}

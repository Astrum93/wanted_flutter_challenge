import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wanted_flutter_challenge/presentation/todo/empty_todo_list_screen.dart';
import 'package:wanted_flutter_challenge/presentation/todo/todo_detail_screen.dart';
import 'package:wanted_flutter_challenge/provider/todo_list_provider.dart';

class TodoListScreen extends ConsumerWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(todoListProvider);

    if (list.isEmpty) {
      return const EmptyTodoListScreen();
    }
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final todo = list[index];
        return GestureDetector(
          onLongPress: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TodoDetailScreen(id: todo.id),
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: Colors.grey,
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  todo.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint('status Clicked!');
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.check_box_outline_blank_rounded),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        todo.status.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

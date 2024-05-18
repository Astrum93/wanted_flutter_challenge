import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wanted_flutter_challenge/presentation/todo/todo_detail_screen.dart';
import 'package:wanted_flutter_challenge/provider/todo_list_provider.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(todoListProvider);

    if (list.isEmpty) {
      return const EmptyTodoListView();
    }
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final todo = list[index];
        return GestureDetector(
          onTap: () => Navigator.of(context).push(
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
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.arrow_forward),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(todo.status.toString()),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class EmptyTodoListView extends StatelessWidget {
  const EmptyTodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No todos yet!'),
    );
  }
}

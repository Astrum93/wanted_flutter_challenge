import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoListView extends ConsumerWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch();

    if (list.isEmpty) {
      return const EmptyTodoListView();
    }
    return const Placeholder();
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

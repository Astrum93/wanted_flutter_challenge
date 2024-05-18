import 'package:flutter/material.dart';

class EmptyTodoListScreen extends StatelessWidget {
  const EmptyTodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('일정이 없습니다.😂'),
    );
  }
}

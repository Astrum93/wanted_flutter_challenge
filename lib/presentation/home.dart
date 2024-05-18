import 'package:flutter/material.dart';
import 'package:wanted_flutter_challenge/presentation/todo/add_todo_screen.dart';
import 'package:wanted_flutter_challenge/presentation/todo/todo_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '오늘의 할 일',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: const TodoListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AddTodoScreen(),
              ),
            );
          },
          child: const Icon(Icons.add),
        ));
    ;
  }
}

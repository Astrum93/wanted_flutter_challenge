import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wanted_flutter_challenge/presentation/home.dart';

void main() {
  runApp(
    RiverpodTodoApp(),
  );
}

class RiverpodTodoApp extends StatelessWidget {
  const RiverpodTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

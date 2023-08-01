import 'package:flutter/material.dart';
import 'package:task_tracker_clone/constants/colors.dart';
import 'package:task_tracker_clone/ui/avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: eerieBlack,
          appBarTheme: const AppBarTheme(
            backgroundColor: eerieBlack,
          )),
      home: const TaskTrackerApp(),
    );
  }
}

class TaskTrackerApp extends StatelessWidget {
  const TaskTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Avatar(
          radius: 25,
        ),
        actions: [
          const Text(
            'add',
            style: TextStyle(color: white),
          )
        ],
      ),
      body: const Column(
        children: [
          const Text(
            'add',
            style: TextStyle(color: white),
          ),
          const Text(
            'add',
            style: TextStyle(color: white),
          ),
          const Text(
            'add',
            style: TextStyle(color: white),
          )
        ],
      ),
    );
  }
}

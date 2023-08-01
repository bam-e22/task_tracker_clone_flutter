import 'package:flutter/material.dart';
import 'package:task_tracker_clone/constants/colors.dart';

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
          appBarTheme: AppBarTheme(
            backgroundColor: eerieBlack,
          )),
      home: TaskTrackerApp(),
    );
  }
}

class TaskTrackerApp extends StatelessWidget {
  const TaskTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('leading icons'),
        actions: [Text('add')],
      ),
      body: Column(
        children: [
          Text('add1'),
          Text('add2'),
          Text('add3'),
        ],
      ),
    );
  }
}

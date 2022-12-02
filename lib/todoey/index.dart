import 'package:business_card/todoey/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:business_card/todoey/screens/task_screen.dart';
import 'package:provider/provider.dart';

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

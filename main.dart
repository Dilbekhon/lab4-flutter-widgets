import 'package:flutter/material.dart';
import 'task1_selection_controls.dart';
import 'task2_input_fields.dart';
import 'task3_buttons_action.dart';
import 'task4_indicators_feedback.dart';
import 'task5_dialogs_modals.dart';
import 'task6_sliders_pickers.dart';
import 'task7_scrollable_collections.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 4 Tasks',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainMenuScreen(),
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab 4 Main Menu')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Task 1: Selection Controls'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Task1Screen())),
          ),
          ListTile(
            title: const Text('Task 2: Input Fields'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Task2Screen())),
          ),
          ListTile(
            title: const Text('Task 3: Buttons'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Task3Screen())),
          ),
          ListTile(
            title: const Text('Task 4: Indicators'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Task4Screen())),
          ),
          ListTile(
            title: const Text('Task 5: Dialogs & Modals'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Task5Screen())),
          ),
          ListTile(
            title: const Text('Task 6: Sliders & Pickers'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Task6Screen())),
          ),
          ListTile(
            title: const Text('Task 7: Scrollable Collections'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Task7Screen())),
          ),
        ],
      ),
    );
  }
}
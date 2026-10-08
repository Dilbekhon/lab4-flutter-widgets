import 'package:flutter/material.dart';

class Task1Screen extends StatefulWidget {
  const Task1Screen({Key? key}) : super(key: key);

  @override
  State<Task1Screen> createState() => _Task1ScreenState();
}

class _Task1ScreenState extends State<Task1Screen> {
  bool isDarkMode = false;
  bool agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 1: Selection Controls'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: isDarkMode,
              onChanged: (val) {
                setState(() {
                  isDarkMode = val;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Agree to Terms'),
              value: agreedToTerms,
              onChanged: (val) {
                setState(() {
                  agreedToTerms = val ?? false;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: agreedToTerms ? () {} : null,
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
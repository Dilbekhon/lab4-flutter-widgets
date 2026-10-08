import 'package:flutter/material.dart';

class Task6Screen extends StatefulWidget {
  const Task6Screen({Key? key}) : super(key: key);

  @override
  State<Task6Screen> createState() => _Task6ScreenState();
}

class _Task6ScreenState extends State<Task6Screen> {
  double volume = 50.0;
  DateTime? selectedDate;

  void pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 6: Sliders & Pickers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Volume: ${volume.round()}%',
              style: const TextStyle(fontSize: 20),
            ),
            Slider(
              value: volume,
              min: 0,
              max: 100,
              onChanged: (val) {
                setState(() {
                  volume = val;
                });
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: pickDate,
              child: const Text('Select Date'),
            ),
            const SizedBox(height: 10),
            Text(
              selectedDate == null
                  ? 'No date chosen'
                  : 'Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
            ),
          ],
        ),
      ),
    );
  }
}
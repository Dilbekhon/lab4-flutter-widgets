import 'package:flutter/material.dart';

class Task5Screen extends StatelessWidget {
  const Task5Screen({Key? key}) : super(key: key);

  void openDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        title: const Text('Confirm Delete'),
        content: const Text('Are you sure you want to delete this item?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  void openShareSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (sheetCtx) => Wrap(
        children: [
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share via Link'),
            onTap: () => Navigator.pop(sheetCtx),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Share via Email'),
            onTap: () => Navigator.pop(sheetCtx),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 5: Dialogs & Modals'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => openDeleteDialog(context),
              child: const Text('Show Delete Dialog'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => openShareSheet(context),
              child: const Text('Show Share Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
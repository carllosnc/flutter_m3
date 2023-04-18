import 'package:flutter/material.dart';

class M3Dialog extends StatelessWidget {
  const M3Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      child: const SizedBox(
        width: double.infinity,
        child: Center(
          child: Text('Show Dialog'),
        ),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Dialog Title'),
              content: const Text('This is a dialog'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

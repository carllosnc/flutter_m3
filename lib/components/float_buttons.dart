import 'package:flutter/material.dart';

class M3FloatButtons extends StatelessWidget {
  const M3FloatButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: [
        FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.add),
        ),
        FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: const Text('Add'),
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}

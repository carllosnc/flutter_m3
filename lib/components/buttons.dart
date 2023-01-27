import 'package:flutter/material.dart';

class M3Buttons extends StatelessWidget {
  const M3Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      spacing: 20,
      children: [
        FilledButton(onPressed: () {}, child: const Text('Filled')),
        ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
        OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
        FilledButton.tonal(onPressed: () {}, child: const Text('Filled tonal')),
        TextButton(onPressed: () {}, child: const Text('Text button'))
      ],
    );
  }
}

import 'package:flutter/material.dart';

class M3Cards extends StatelessWidget {
  const M3Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Card(
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: Center(child: Text('Elevated Card')),
          ),
        ),
        Card(
          elevation: 0,
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: const SizedBox(
            width: double.infinity,
            height: 60,
            child: Center(child: Text('Filled Card')),
          ),
        ),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Theme.of(context).colorScheme.outline),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          color: Theme.of(context).colorScheme.surfaceVariant,
          child: const SizedBox(
            width: double.infinity,
            height: 60,
            child: Center(child: Text('Outlined Card')),
          ),
        ),
      ],
    );
  }
}

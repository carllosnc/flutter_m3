import 'package:flutter/material.dart';

class M3ProgressIndicators extends StatelessWidget {
  const M3ProgressIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircularProgressIndicator(),
        SizedBox(width: 30),
        SizedBox(width: 250, child: LinearProgressIndicator()),
      ],
    );
  }
}

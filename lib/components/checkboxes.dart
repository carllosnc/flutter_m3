import 'package:flutter/material.dart';

class M3Checkboxes extends StatefulWidget {
  const M3Checkboxes({super.key});

  @override
  State<M3Checkboxes> createState() => _M3CheckboxesState();
}

class _M3CheckboxesState extends State<M3Checkboxes> {
  bool? _first = false;
  bool? _second = false;
  bool? _third = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Checkbox(
              value: _first,
              onChanged: (value) {
                setState(() {
                  _first = value;
                });
              },
            ),
            const Text('Check 1')
          ],
        ),
        const SizedBox(width: 5),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Checkbox(
              value: _second,
              onChanged: (value) {
                setState(() {
                  _second = value;
                });
              },
            ),
            const Text('Check 2')
          ],
        ),
        const SizedBox(width: 5),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Checkbox(
              value: _third,
              onChanged: (value) {
                setState(() {
                  _third = value;
                });
              },
            ),
            const Text('Check 3')
          ],
        ),
      ],
    );
  }
}

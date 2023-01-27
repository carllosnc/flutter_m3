import 'package:flutter/material.dart';

enum Items { first, second, third }

class M3RadioButton extends StatefulWidget {
  const M3RadioButton({super.key});

  @override
  State<M3RadioButton> createState() => _M3RadioButtonState();
}

class _M3RadioButtonState extends State<M3RadioButton> {
  Items? value = Items.first;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Radio<Items>(
              value: Items.first,
              groupValue: value,
              onChanged: (Items? current) {
                setState(() {
                  value = current;
                });
              },
            ),
            const Text('first')
          ],
        ),
        const SizedBox(width: 20),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Radio<Items>(
              value: Items.second,
              groupValue: value,
              onChanged: (Items? current) {
                setState(() {
                  value = current;
                });
              },
            ),
            const Text('second')
          ],
        ),
        const SizedBox(width: 20),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Radio<Items>(
              value: Items.third,
              groupValue: value,
              onChanged: (Items? current) {
                setState(() {
                  value = current;
                });
              },
            ),
            const Text('third')
          ],
        )
      ],
    );
  }
}

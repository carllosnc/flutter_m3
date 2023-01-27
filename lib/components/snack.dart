import 'package:flutter/material.dart';

class M3Snack extends StatelessWidget {
  const M3Snack({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        final snackBar = SnackBar(
          content: const Text('Snackbar content'),
          action: SnackBarAction(label: 'Undo', onPressed: () {}),
        );

        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: const SizedBox(
        width: double.infinity,
        child: Center(child: Text('Show snack bar')),
      ),
    );
  }
}

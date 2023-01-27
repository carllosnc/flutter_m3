import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class M3ColorPicker extends StatefulWidget {
  final void Function(Color) action;

  const M3ColorPicker({super.key, required this.action});

  @override
  State<M3ColorPicker> createState() => _M3ColorPickerState();
}

class _M3ColorPickerState extends State<M3ColorPicker> {
  Color _pickerColor = const Color.fromARGB(255, 152, 87, 184);
  Color _currentColor = const Color.fromARGB(255, 230, 22, 22);

  void changeColor(Color color) {
    setState(() => _pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: _currentColor,
                  onColorChanged: changeColor,
                ),
              ),
              actions: [
                FilledButton(
                  onPressed: () {
                    widget.action(_pickerColor);

                    setState(() {
                      _currentColor = _pickerColor;
                      Navigator.of(context).pop();
                    });
                  },
                  child: const Text('Got it'),
                )
              ],
            );
          },
        );
      },
      icon: const Icon(Icons.palette),
    );
  }
}

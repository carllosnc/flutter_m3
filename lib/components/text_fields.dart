import 'package:flutter/material.dart';

class M3TextFields extends StatefulWidget {
  const M3TextFields({super.key});

  @override
  State<M3TextFields> createState() => _M3TextFieldsState();
}

class _M3TextFieldsState extends State<M3TextFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        TextFormField(
          autofocus: false,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Text field',
            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          enabled: false,
          autofocus: false,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Text field',
            contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          ),
        ),
      ],
    );
  }
}

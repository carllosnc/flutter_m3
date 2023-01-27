import 'package:flutter/material.dart';

class M3Switch extends StatefulWidget {
  const M3Switch({super.key});

  @override
  State<M3Switch> createState() => _M3SwitchState();
}

class _M3SwitchState extends State<M3Switch> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Switch(
            value: false,
            onChanged: null,
          ),
          const SizedBox(width: 15),
          Switch(
            value: value,
            onChanged: (switchValue) {
              setState(() {
                value = switchValue;
              });
            },
          ),
        ],
      ),
    );
  }
}

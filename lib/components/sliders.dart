import 'package:flutter/material.dart';

class M3Sliders extends StatefulWidget {
  const M3Sliders({super.key});

  @override
  State<M3Sliders> createState() => _M3SlidersState();
}

class _M3SlidersState extends State<M3Sliders> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 10,
      label: 'value: ${_currentSliderValue.round().toString()}',
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}

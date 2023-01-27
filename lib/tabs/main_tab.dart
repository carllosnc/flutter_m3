import 'package:flutter/material.dart';
import 'package:flutter_m3/components/bottom_sheet.dart';
import 'package:flutter_m3/components/checkboxes.dart';
import 'package:flutter_m3/components/chips.dart';
import 'package:flutter_m3/components/sliders.dart';
import 'package:flutter_m3/components/snack.dart';
import 'package:flutter_m3/components/switch.dart';

import '../components/buttons.dart';
import '../components/cards.dart';
import '../components/progress_indicators.dart';
import '../components/radio_button.dart';
import '../components/segmented_button.dart';
import '../components/text_fields.dart';

class MainTab extends StatelessWidget {
  const MainTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            M3Buttons(),
            SizedBox(height: 40),
            M3Sliders(),
            SizedBox(height: 40),
            M3Switch(),
            SizedBox(height: 40),
            M3ProgressIndicators(),
            SizedBox(height: 40),
            M3Snack(),
            SizedBox(height: 40),
            M3BottomSheet(),
            SizedBox(height: 40),
            M3SegmentedButton(),
            SizedBox(height: 40),
            M3Checkboxes(),
            SizedBox(height: 40),
            M3RadioButton(),
            SizedBox(height: 40),
            M3Chips(),
            SizedBox(height: 40),
            M3TextFields(),
            SizedBox(height: 40),
            M3Cards()
          ],
        ),
      ),
    );
  }
}

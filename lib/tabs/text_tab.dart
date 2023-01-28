import 'package:flutter/material.dart';

class TextTab extends StatefulWidget {
  const TextTab({super.key});

  @override
  State<TextTab> createState() => _TextTabState();
}

class _TextTabState extends State<TextTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Body Large',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            'Body Medium',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Body Small',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 40),
          Text(
            'Display Large',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            'Display Medium',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            'Display small',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 40),
          Text(
            'Headline large',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'Headline Medium',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            'Headline Small',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 40),
          Text(
            'Label Large',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            'Label Medium',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            'Label Small',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const SizedBox(height: 40),
          Text(
            'Title Large',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Title Medium',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            'Title Small',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}

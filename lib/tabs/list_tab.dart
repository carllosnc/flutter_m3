import 'package:flutter/material.dart';

class ListTab extends StatelessWidget {
  const ListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        onTap: () {
          Navigator.pushNamed(context, '/list/sliver');
        },
        title: const Text('Sliver list'),
        subtitle: const Text('Multiple types of list'),
        leading: const Icon(Icons.list),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    ]);
  }
}

import 'package:flutter/material.dart';

class M3Drawer extends StatelessWidget {
  const M3Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text('Drawer header'),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Home'),
            leading: Icon(
              Icons.home_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          ListTile(
            onTap: () {},
            title: const Text('Settings'),
            leading: Icon(
              Icons.settings_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}

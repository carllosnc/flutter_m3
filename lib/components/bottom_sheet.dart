import 'package:flutter/material.dart';

class M3BottomSheet extends StatelessWidget {
  const M3BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return SizedBox(
              height: 200,
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.photo_camera,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: const Text('Open photo camera'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.video_camera_back,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: const Text('Open video camera'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(
                      Icons.folder_open,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: const Text('Search in files'),
                  )
                ],
              ),
            );
          },
        );
      },
      child: const SizedBox(
        width: double.infinity,
        child: Center(child: Text('Open bottom sheet')),
      ),
    );
  }
}

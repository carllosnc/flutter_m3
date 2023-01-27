import 'package:flutter/material.dart';

class M3Chips extends StatefulWidget {
  const M3Chips({super.key});

  @override
  State<M3Chips> createState() => _M3ChipsState();
}

class _M3ChipsState extends State<M3Chips> {
  bool favorite = false;
  bool like = false;
  bool star = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ActionChip(
          avatar: Icon(
            favorite ? Icons.favorite : Icons.favorite_border_outlined,
          ),
          label: const Text('Favorite'),
          onPressed: () {
            setState(() {
              favorite = !favorite;
            });
          },
        ),
        const SizedBox(width: 10),
        ActionChip(
          avatar: Icon(
            like ? Icons.thumb_up : Icons.thumb_up_outlined,
          ),
          label: const Text('Like'),
          onPressed: () {
            setState(() {
              like = !like;
            });
          },
        ),
        const SizedBox(width: 10),
        ActionChip(
          avatar: Icon(
            star ? Icons.star : Icons.star_outline,
          ),
          label: const Text('Like'),
          onPressed: () {
            setState(() {
              star = !star;
            });
          },
        )
      ],
    );
  }
}

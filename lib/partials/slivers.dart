import 'package:flutter/material.dart';

class Slivers extends StatefulWidget {
  const Slivers({super.key});

  @override
  State<Slivers> createState() => _SliversState();
}

class _SliversState extends State<Slivers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slivers'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                  subtitle: Text('Subtitle $index'),
                  leading: CircleAvatar(
                    child: Text('$index'),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 10,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: Colors.primaries[index % Colors.primaries.length],
                  //randomic images
                  child: Image.network(
                    'https://picsum.photos/200/300?random=$index',
                    fit: BoxFit.cover,
                  ),
                );
              },
              childCount: 1002,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Colors.red,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 10,
            ),
          ),
          SliverFillRemaining(
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

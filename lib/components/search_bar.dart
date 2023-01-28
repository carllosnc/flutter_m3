import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'first',
    'seconds',
    'third',
    'fourth',
    'fifth',
    'sixth'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchquery = [];

    for (var fruit in searchTerms) {
      if ((fruit.toLowerCase().contains(query.toLowerCase()))) {
        matchquery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchquery.length,
      itemBuilder: (context, index) {
        var result = matchquery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchquery = [];

    for (var fruit in searchTerms) {
      if ((fruit.toLowerCase().contains(query.toLowerCase()))) {
        matchquery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchquery.length,
      itemBuilder: (context, index) {
        var result = matchquery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

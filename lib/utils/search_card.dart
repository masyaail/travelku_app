import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  var searchResults;

  var data;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.search),
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text(
                      'Find Your Destination',
                      style:
                          TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
                    ),
                  ),
                ],
              ),
              TextField(
                decoration: const InputDecoration(
                    hintText: 'Enter Here',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    )),
                onChanged: (value) {
                  setState(() {
                    searchResults = data
                        .where((item) =>
                            item.toLowerCase().contains(value.toLowerCase()))
                        .toList();
                  });
                },
              ),
            ],
          )),
    );
  }
  void setState(Null Function() param0) {}
}
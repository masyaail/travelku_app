import 'package:flutter/material.dart';
import 'package:travelku/utils/categories_card.dart';

class YourCategories extends StatefulWidget {
  const YourCategories({super.key});

  @override
  State<YourCategories> createState() => _YourCategoriesState();
}

class _YourCategoriesState extends State<YourCategories> {
  bool _isSearchVisible = false;

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 101, 181, 255))),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_rounded)),
              title: AnimatedCrossFade(
                firstChild: const Center(
                  child: Text('Your Categories'),
                ),
                secondChild: TextField(
                  controller: _searchController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {},
                ),
                crossFadeState: _isSearchVisible
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 300),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(
                    icon: Icon(_isSearchVisible
                        ? Icons.close_rounded
                        : Icons.search_rounded),
                    onPressed: () {
                      setState(() {
                        _isSearchVisible = !_isSearchVisible;
                      });
                    },
                  ),
                )
              ],
            ),
            body: const SingleChildScrollView(
                scrollDirection: Axis.horizontal, child: CategoriesCard())));
  }
}

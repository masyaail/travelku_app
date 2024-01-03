import 'package:flutter/material.dart';
import 'package:travelku/homepage.dart';
import 'package:travelku/models/place.dart';
import 'package:travelku/models/user.dart';
import 'package:travelku/pages/detail1.dart';
import 'package:travelku/services/place_services.dart';
import 'package:travelku/services/user_services.dart';
import 'package:travelku/utils/card.dart';

// ignore: must_be_immutable
class ListByCategories extends StatefulWidget {
  const ListByCategories({super.key});

  @override
  State<ListByCategories> createState() => _ListByCategoriesState();
}

class _ListByCategoriesState extends State<ListByCategories> {
  bool _isSearchVisible = false;
  List<User> users = [];
  List<Place> places = [];
  bool isLoading = true;

  void fetchUser() async {
    isLoading = true;
    final result = await UserService.fetchUsers();
    users = result;
    setState(() {});
    isLoading = false;
  }

  void fetchPlace() async {
    isLoading = true;
    final result = await PlaceService.fetchPlaces();
    places = result;
    setState(() {});
    isLoading = false;
  }

  @override
  void initState() {
    super.initState();
    fetchUser();
    fetchPlace();
  }

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 101, 181, 255)),
      ),
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_rounded)),
            title: AnimatedCrossFade(
              firstChild: const Center(child: Text('Category')),
              secondChild: TextField(
                controller: _searchController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  // Handle search query
                },
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
              ),
            ],
          ),
          body: ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, index) {
                final place = places[index];
                return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Detail1(
                                      addressDetail: place.address,
                                      descriptionDetail: place.description,
                                      imageDetail: place.image.substring(37),
                                      phoneDetail: place.phone,
                                      ratingDetail: place.rating,
                                      titleDetail: place.title,
                                    ))));
                      },
                  child: CardCustom(
                      title: '${place.title} ',
                      subtitle: place.address,
                      image: place.image.substring(37)),
                );
              })),
    );
  }
}

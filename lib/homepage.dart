import 'package:flutter/material.dart';
import 'package:travelku/models/place.dart';
import 'package:travelku/pages/detail1.dart';
import 'package:travelku/services/place_services.dart';
import 'package:travelku/services/user_services.dart';
import 'package:travelku/utils/card.dart';
import 'package:travelku/utils/categories_card.dart';
import 'package:travelku/utils/search_card.dart';
import 'package:travelku/utils/main_carousel.dart';
import '../models/user.dart';
import 'utils/navbar.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1592741217769-2d961d29102c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Z3VudW5nfGVufDB8MHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1657690230087-7ad267699528?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGFudGFpJTIwdGlnYSUyMHdhcm5hfGVufDB8fDB8fHww&auto=format&fit=crop&w=774&q=80',
  'https://images.unsplash.com/photo-1624731798627-6cea0017de7c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Z3VudW5nJTIwcHJhdXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=774&q=80',
  'https://images.unsplash.com/photo-1616813387346-12ffa5dc5e5b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGd1bnVuZ3xlbnwwfDB8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=774&q=80',
  'https://images.unsplash.com/photo-1658061927660-4111b6012a79?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
  'https://images.unsplash.com/photo-1555899434-94d1368aa7af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
  'https://images.unsplash.com/photo-1583212292454-1fe6229603b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
  'https://images.unsplash.com/photo-1583827006477-97a7c90b12e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80'
];

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(31, 69, 144, 100))),
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Center(child: Text('TravelKu')),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          child: Column(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: MainCarousel(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0, bottom: 0.0),
                        child: SearchCard(),
                      ),
                    ],
                  ),
                  const Center(
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 0.0),
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: CategoriesCard()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
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
                          title: place.title,
                          subtitle: place.address,
                          image: place.image.substring(37)),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

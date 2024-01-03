import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travelku/homepage.dart';
import 'package:travelku/pages/detail1.dart';
import 'package:travelku/pages/example_detail.dart';
import 'package:travelku/services/images_services.dart';
import 'package:travelku/services/place_services.dart';
import 'package:travelku/services/user_services.dart';
import 'package:travelku/utils/card.dart';
import 'package:travelku/utils/categories_card.dart';
import 'package:travelku/utils/example_card.dart';
import 'package:travelku/utils/search_card.dart';
import 'package:travelku/utils/main_carousel.dart';
import '../models/user.dart';
import '../models/place.dart';
import 'utils/navbar.dart';

class HomepageExample extends StatefulWidget {
  const HomepageExample({super.key});

  @override
  State<HomepageExample> createState() => _HomepageExampleState();
}

class _HomepageExampleState extends State<HomepageExample> {
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
    final place = places;
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
          body:
              // Container(child: Image.network(Place(image: )),)
              //     SingleChildScrollView(
              //       controller: ScrollController(),
              //       child: Column(
              //         children: [
              //           Column(
              //             children: [
              //               Column(
              //                 children: [
              //                   const Padding(
              //                     padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              //                     child: MainCarousel(),
              //                   ),
              //                   Padding(
              //                     padding: const EdgeInsets.only(top: 0, bottom: 0.0),
              //                     child: SearchCard(),
              //                   ),
              //                 ],
              //               ),
              //               Center(
              //                 child: Stack(
              //                   children: const [
              //                     Padding(
              //                       padding: EdgeInsets.only(top: 10.0, bottom: 0.0),
              //                       child: SingleChildScrollView(
              //                           scrollDirection: Axis.horizontal,
              //                           child: CategoriesCard()),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ],
              //           ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: place.length,
                  itemBuilder: (context, index) {
                    final place = places[index];
                    // final image = imageUrls[index];
                    return
                        //           InkWell(
                        //             onTap: () {
                        //               Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: ((context) => Detail1(
                        //                             addressDetail: '',
                        //                             descriptionDetail: '',
                        //                             imageDetail: place.image,
                        //                             phoneDetail: '',
                        //                             ratingDetail: place.description,
                        //                             titleDetail: place.title,
                        //                           ))));
                        //             },
                        //             child:
                        Column(
                          children: [
                            Text(place.image.substring(37)),
                            Text(imgList[index].toString()),
                            Container(child: Image.network(place.image.substring(37))),
                          ],
                        );
                  }
                  //           );
                  //         })
                  // ],
                  // ),
                  // ),
                  ),
        ));
  }
}

// sisa koreksi di navbar
// InkWell(
//               onTap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Detail(),
//                     ));
//               },
//               child:
// ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:shopee/pages/wisata/detail_screen.dart';

// import 'wisata.dart';

// class ListWisata extends StatefulWidget {
//   const ListWisata({super.key});

//   @override
//   State<ListWisata> createState() => _ListWisataState();
// }

// class _ListWisataState extends State<ListWisata> {
//   List data = [
//     'asset/images/logo4.jpeg',
//     'asset/images/logo5.jpeg',
//     'asset/images/logo6.jpeg',
//     'asset/images/logo7.jpeg',
//     'asset/images/logo8.jpeg',
//     'asset/images/logo9.jpeg',
//     'asset/images/logo10.jpeg',
//     'asset/images/logo11.jpeg',
//     'asset/images/logo17.jpeg',
//     'asset/images/logo19.jpeg',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Text('Daftar wisata'),
//       ),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(20),
//           width: 400,
//           child: ListView.builder(
//               itemCount: data.length,
//               itemBuilder: (context, index) {
//                 final listWisata = dataWisata[index];
//                 return InkWell(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) =>
//                               DetailScreen(wisata: listWisata),
//                         ));
//                   },
//                   child:Card(
//                     child: Row(
//                       // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                          Padding(
//                             padding: const EdgeInsets.all(16.0),
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(30),
//                               child: Image.asset(
//                                 data[index],
//                                 width: 150,
//                                 height: 150,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         // SizedBox(
//                         //   width: 150,
//                         //   height: 150,
//                         //   child: Image.asset(data[index])),
//                         // Text(listWisata.judul)
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                       children:[
//                         Text(dataWisata[index].judul,
//                                     style: const TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 25,
//                                         color:
//                                             Color.fromARGB(255, 234, 24, 73))),
//                          Text('HTM : ${dataWisata[index].jadwal}'),
//                          ClipOval(
//                           child: Material(
//                             color: Color.fromARGB(255, 13, 113, 219),
//                              child: InkWell(
//                               splashColor: const Color.fromARGB(255, 208, 29, 17), // inkwell color
//                               child: const SizedBox(
//                                 width: 30,
//                                 height: 30,
//                                 child:Icon(Icons.favorite) ,
//                               ),
//                                onTap: (){

//                               },

//                              )

//                           ),

//                          )

//                       ]

//                         )
//                       ],
//                     ),
//                   )
//                 );
//               }),
//         ),
//       ),
//     );
//   }
// }

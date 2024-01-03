// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:travelku/example.dart';
// import 'package:travelku/homepage.dart';
// import 'package:travelku/models/place.dart';
// import 'package:travelku/services/place_services.dart';

// // ignore: must_be_immutable
// class Detail extends StatefulWidget {
//   @override
//   _DetailState createState() => _DetailState();
// }

// class _DetailState extends State<Detail> {
//   List<Place> places = [];

//   void fetchPlace() async {
//     final result = await PlaceService.fetchPlaces();
//     setState(() {
//       places = result;
//     });
//   }

//   bool _isSearchVisible = false;

//   final TextEditingController _searchController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     fetchPlace();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//             seedColor: const Color.fromARGB(255, 101, 181, 255)),
//       ),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             leading: IconButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: const Icon(Icons.arrow_back_rounded)),
//             title: AnimatedCrossFade(
//               firstChild: const Center(child: Text('Detail Description')),
//               secondChild: TextField(
//                 controller: _searchController,
//                 style: const TextStyle(color: Colors.white),
//                 decoration: const InputDecoration(
//                   hintText: 'Search...',
//                   hintStyle: TextStyle(color: Colors.white70),
//                   border: InputBorder.none,
//                 ),
//                 onChanged: (value) {
//                   // Handle search query
//                 },
//               ),
//               crossFadeState: _isSearchVisible
//                   ? CrossFadeState.showSecond
//                   : CrossFadeState.showFirst,
//               duration: const Duration(milliseconds: 300),
//             ),
//             actions: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 20),
//                 child: IconButton(
//                   icon: Icon(
//                       _isSearchVisible ? Icons.close : Icons.search_rounded),
//                   onPressed: () {
//                     setState(() {
//                       _isSearchVisible = !_isSearchVisible;
//                     });
//                   },
//                 ),
//               ),
//             ],
//           ),
//           body:

//           ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ExampleDetail extends StatelessWidget {
  const ExampleDetail({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(title));
  }
}

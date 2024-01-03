import 'package:flutter/material.dart';
import 'package:travelku/example.dart';
import 'package:travelku/homepage.dart';
import 'package:travelku/models/place.dart';
import 'package:travelku/services/place_services.dart';

// ignore: must_be_immutable
class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List<Place> places = [];

  void fetchPlace() async {
    final result = await PlaceService.fetchPlaces();
    setState(() {
      places = result;
    });
  }

  bool _isSearchVisible = false;

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchPlace();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 101, 181, 255)),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_rounded)),
            title: AnimatedCrossFade(
              firstChild: const Center(child: Text('Detail Description')),
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
                  icon: Icon(
                      _isSearchVisible ? Icons.close : Icons.search_rounded),
                  onPressed: () {
                    setState(() {
                      _isSearchVisible = !_isSearchVisible;
                    });
                  },
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    color: Colors.amber,
                    child: Image.network(
                      imgList[1],
                    )),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Malioboro',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Yogyakarta, Indonesia',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Rating',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 20),
                          Text(
                            '8/10',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                     
                      Row(
                        children: [
                          Text(
                            'Phone ',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            '088765434656',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'Jalan Malioboro (Jawa: ꦢꦭꦤ꧀​ꦩꦭꦶꦪꦧꦫ, red.Dalan Maliabara)adalah salah satu kawasan jalan dari tiga jalan di Kota Yogyakarta yang membentang dari Tugu Yogyakarta hingga ke persimpangan Titik Nol Kilometer Yogyakarta. n\ Secara keseluruhan, kawasan Malioboro terdiri atas Jalan Margo Utomo, Jalan Malioboro, dan Jalan Margo Mulyo. Jalan ini merupakan poros Garis Imajiner Kraton Yogyakarta. n\ Jalan Malioboro (Jawa: ꦢꦭꦤ꧀​ꦩꦭꦶꦪꦧꦫ, red.Dalan Maliabara)adalah salah satu kawasan jalan dari tiga jalan di Kota Yogyakarta yang membentang dari Tugu Yogyakarta hingga ke persimpangan Titik Nol Kilometer Yogyakarta. n\ Secara keseluruhan, kawasan Malioboro terdiri atas Jalan Margo Utomo, Jalan Malioboro, dan Jalan Margo Mulyo. Jalan ini merupakan poros Garis Imajiner Kraton Yogyakarta.',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

import 'dart:convert';
import '../models/place.dart';
import 'package:http/http.dart' as http;



class PlaceService {
  static const String baseUrl = 'http://127.0.0.1:8000/api/web/places';
  static Future<List<Place>> fetchPlaces() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      final body = response.body;
      final result = jsonDecode(body);
      List<Place> places = List<Place>.from(
        result['data']['data'].map(
          (place) => Place.fromJson(place),
        ),
      );
      print(result);
      return places;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

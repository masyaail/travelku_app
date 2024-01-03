import 'dart:convert';
import '../models/place.dart';
import 'package:http/http.dart' as http;

import 'package:http/http.dart' as http;
import 'dart:convert';

class ImageService {
  Future<List<String>> getImageUrls() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/web/places'));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      List<dynamic> places = decodedData['data']['data'];
      List<String> imageUrls = [];
      for (var place in places) {
        List<dynamic> images = place['images'];
        List<String> placeImageUrls = images.map((image) => image['image'] as String).toList();
        imageUrls.addAll(placeImageUrls);
      }
      return imageUrls;
    } else {
      throw Exception('Failed to load image URLs');
    }
  }
}
void main() async {
  ImageService imageService = ImageService();
  try {
    List<String> imageUrls = await imageService.getImageUrls();
    print(imageUrls);
  } catch (e) {
    print('Error: $e');
  }
}

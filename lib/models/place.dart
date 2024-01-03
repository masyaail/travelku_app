// ignore_for_file: public_member_api_docs, sort_constructors_first
// class DataPlaces {
//   ListPlace? dataPlaces;
//   int? currentPage;

//   DataPlaces({
//     this.dataPlaces,
//     this.currentPage
//   })

//   factory DataPlaces.fromJson(Map<String, dynamic> json){
//     return DataPlaces(
//       dataPlaces: json['data']
//     );
//   }

// }

// class ListPlace {
//   List<Place> place;
//   ListPlace({
//     required this.place,
//   });

//   factory ListPlace.fromJson(Map<String, dynamic> json){
//     return ListPlace(place: List<Place>.from(json["data"].map((e) => ListPlace.fromJson(e))));
//   }

// }

class Place {
  final int id;
  final String title;
  final String phone;
  final String description;
  final String address;
  final String rating;
  final String image;

  Place({
    required this.id,
    required this.title,
    required this.phone,
    required this.description,
    required this.address,
    required this.rating,
    required this.image,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    final images = json['images'] as List<dynamic>;
    final firstImage = images.isNotEmpty ? images[0] : null;
    
    return Place(
      id: json['id'],
      title: json['title'],
      phone: json['phone'],
      description: json['description'],
      address: json['address'],
      rating: json['rating'],
      image: firstImage != null ? firstImage ['image'] : null,
    );
  }

  toLowerCase() {}
}


class Image1 {
    int id;
    int placeId;
    String image;
    DateTime createdAt;
    DateTime updatedAt;

    Image1({
        required this.id,
        required this.placeId,
        required this.image,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Image1.fromJson(Map<String, dynamic> json) => Image1(
        id: json["id"],
        placeId: json["place_id"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "place_id": placeId,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Posts {
  final int id;
  final int userId;
  final String title;
  final String body;

  Posts({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory Posts.fromJson(Map<String, dynamic> json) {
    return new Posts(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }
}

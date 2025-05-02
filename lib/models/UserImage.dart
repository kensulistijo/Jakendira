class UserImage {
  final int id;
  final int userId;
  final String url;

  UserImage({
    required this.id,
    required this.userId,
    required this.url,
  });

  factory UserImage.fromJson(Map<String, dynamic> json) {
    return UserImage(
      id: json['id'] as int,
      userId: json['userid'] as int,
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userid': userId,
      'url': url,
    };
  }
}

class Todo {
  final int id;
  final int userid;
  final String title;
  final String description;
  final String status;

  Todo({
    required this.id,
    required this.userid,
    required this.title,
    required this.description,
    required this.status
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'] as int,
      userid: json['userid'] as int,
      title: json['name'] as String,
      description: json['description'] as String,
      status: json['status'] as String
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userid': userid,
      'title': title,
      'description': description,
      'status' : status
    };
  }
}

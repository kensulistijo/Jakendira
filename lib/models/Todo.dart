class Todo {
  final int id;
  final String title;
  final String description;
  final String status;

  Todo({
    required this.id,
    required this.title,
    required this.description,
    required this.status
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'] as int,
      title: json['name'] as String,
      description: json['description'] as String,
      status: json['status'] as String
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'status' : status
    };
  }
}

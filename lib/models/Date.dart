class Date {
  final int id;
  final String name;
  final String description;
  final String location;
  final String status;
  final DateTime date;

  Date({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.status,
    required this.date
  });

  factory Date.fromJson(Map<String, dynamic> json) {
    return Date(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      status: json['status'] as String,
      date: json['date'] as DateTime
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'location': location,
      'date' : date,
      'status': status
    };
  }
}

abstract class Date {
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
    required this.date,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'location': location,
      'status': status,
      'date': date.toIso8601String(), 
    };
  }
}

class Schedule {
  final int id;
  final String name;
  final String description;
  final String location;
  final String status;
  final DateTime startDate;
  final DateTime endDate;

  Schedule({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.status,
    required this.startDate,
    required this.endDate
  });

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      status: json['status'] as String,
      startDate: json['startdate'] as DateTime,
      endDate: json['enddate'] as DateTime
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'location': location,
      'startdate' : startDate,
      'enddate' : endDate,
      'status': status
    };
  }
}

class Schedule {
  final int id;
  final int userid;
  final String title;
  final String description;
  final String location;
  final String status;
  final DateTime startDate;
  final DateTime endDate;

  Schedule({
    required this.id,
    required this.title,
    required this.userid,
    required this.description,
    required this.location,
    required this.status,
    required this.startDate,
    required this.endDate
  });

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      id: json['id'] as int,
      title: json['title'] as String,
      userid: json['userid'] as int,
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
      'title': title,
      'userid': userid,
      'description': description,
      'location': location,
      'startdate': startDate,
      'enddate': endDate,
      'status': status,
    };
  }
}

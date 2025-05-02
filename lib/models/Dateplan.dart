import 'package:jakendira/models/Date.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Dateplan extends Date {
  Dateplan({
    required int id,
    required String name,
    required String description,
    required String location,
    required String status,
    required DateTime date,
  }) : super(
          id: id,
          name: name,
          description: description,
          location: location,
          status: status,
          date: date,
        );

  factory Dateplan.fromJson(Map<String, dynamic> json) {
    // Parse DateTime from string or timestamp as needed
    DateTime parsedDate;
    if (json['date'] is String) {
      parsedDate = DateTime.parse(json['date']);
    } else if (json['date'] is Timestamp) {
      // For Firestore Timestamp
      parsedDate = (json['date'] as Timestamp).toDate();
    } else {
      throw Exception('Invalid date format');
    }

    return Dateplan(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      status: json['status'] as String,
      date: parsedDate,
    );
  }
}
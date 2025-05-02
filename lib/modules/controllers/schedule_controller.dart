import 'package:flutter/material.dart';
import 'package:jakendira/models/Schedule.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InputController extends ChangeNotifier {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final CollectionReference _collection = _firestore.collection('Schedule');

  static Future<List<Map<String, dynamic>>> getUserSchedules({required String userId}) async {
    int temp = int.parse(userId);
    final schedulesSnapshot = await FirebaseFirestore.instance
      .collection('schedules')
      .where('userId', isEqualTo: temp)
      .get();

    return schedulesSnapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<void> createSchedule(Schedule input) async {
    await FirebaseFirestore.instance.collection('schedules').add({
      'id': input.id,
      'title': input.title,
      'userid': input.userid,
      'description': input.description,
      'location': input.location,
      'startdate': input.startDate,
      'enddate': input.endDate,
      'status': input.status,
    });
  }

  static Future<void> changeStatus({required String scheduleId, required String status}) async {
    await _collection.doc(scheduleId).update({
      'status': status, 
    });
  }

  static Future<void> deleteSchedule({required String scheduleId}) async {
    await _collection.doc(scheduleId).delete();
  }
}

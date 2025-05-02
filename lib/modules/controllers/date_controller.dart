import 'package:flutter/material.dart';
import 'package:jakendira/models/Datehistory.dart';
import 'package:jakendira/models/Dateplan.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InputController extends ChangeNotifier {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final CollectionReference _collection = _firestore.collection('Date');

  Future<void> createDatePlan(Dateplan input) async {
    await FirebaseFirestore.instance.collection('dateplans').add({
      'name': input.name,
      'description': input.description,
      'location': input.location,
      'date': input.date,
      'status': input.date,
    });
  }

  Future<void> createDateHistory(Datehistory input) async{
    await FirebaseFirestore.instance.collection('dateplans').add({
      'name': input.name,
      'description': input.description,
      'location': input.location,
      'date': input.date,
      'status': input.date,
    });
  }

  static Future<List<Map<String, dynamic>>> getDatePlans() async {
    final schedulesSnapshot = await FirebaseFirestore.instance.collection('dateplans').get();
    return schedulesSnapshot.docs.map((doc) => doc.data()).toList();
  }

  static Future<List<Map<String, dynamic>>> getDateHistory() async {
    final schedulesSnapshot = await FirebaseFirestore.instance.collection('datehistory').get();
    return schedulesSnapshot.docs.map((doc) => doc.data()).toList();
  }

  static Future<List<Map<String, dynamic>>> getDatePlansByStatus(String status) async {
    final schedulesSnapshot = await FirebaseFirestore.instance.collection('dateplans').where('status', isEqualTo: status).get();
    return schedulesSnapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<void> updateDatePlan(String dateId, Dateplan input) async{
    await _collection.doc(dateId).update({
      // 'status': status, 
    });
  }

  Future<void> updateDateHistory(String dateId, Dateplan input) async{
    await _collection.doc(dateId).update({
      // 'status': status, 
    });
  }


}

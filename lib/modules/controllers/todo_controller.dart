import 'package:flutter/material.dart';
import 'package:jakendira/models/Todo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TodoController {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final CollectionReference _collection = _firestore.collection('Todo');

  static Future<void> addEmployee({required String name, required int age}) async {
    await _collection.add({'name': name, 'age': age, 'created_at': Timestamp.now()});
  }

  // READ (Stream for real-time updates)
  static Stream<QuerySnapshot> readEmployees() {
    return _collection.orderBy('created_at', descending: true).snapshots();
  }

  // UPDATE
  static Future<void> updateEmployee({required String docId, required String name, required int age}) async {
    await _collection.doc(docId).update({'name': name, 'age': age, 'updated_at': Timestamp.now()});
  }

  // DELETE
  static Future<void> deleteEmployee({required String docId}) async {
    await _collection.doc(docId).delete();
  }
}
  Future<void> submitInput(Todo input) async {
    // await FirebaseFirestore.instance.collection('users').add({
    //   'name': name,
    //   'email': email,
    //   'age': age,
    // });
  }

  void changeStatus(Todo input){

  }

  void deleteSchedule(Todo input){
    
  }
}

import 'package:flutter/material.dart';
import 'package:jakendira/models/Todo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TodoController {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final CollectionReference _collection = _firestore.collection('Todo');

  Future<void> createTodo(Todo input) async {
    await FirebaseFirestore.instance.collection('todos').add({
      'title': input.title,
      'description': input.description,
      'status': 'Not Finished'
    });
  }

static Stream<QuerySnapshot> getTodayTodos() {
  final now = DateTime.now();
  final startOfDay = DateTime(now.year, now.month, now.day);
  final startOfTomorrow = startOfDay.add(Duration(days: 1));

  return _collection
      .where('created_at', isGreaterThanOrEqualTo: startOfDay)
      .where('created_at', isLessThan: startOfTomorrow)
      .orderBy('created_at', descending: true)
      .snapshots();
  }

  static Future<void> deleteTodo({required String todoId}) async {
    await _collection.doc(todoId).delete();
  }

  static Future<void> finishTodo({required String todoId}) async {
    await _collection.doc(todoId).update({
      'status': 'finished', 
    });
  }

}
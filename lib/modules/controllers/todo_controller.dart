import 'package:flutter/material.dart';
import 'package:jakendira/models/To-do.dart';

class InputController extends ChangeNotifier {
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

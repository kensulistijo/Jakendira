import 'package:flutter/material.dart';
import 'package:jakendira/models/Schedule.dart';

class InputController extends ChangeNotifier {
  Future<void> submitInput(Schedule input) async {
    // await FirebaseFirestore.instance.collection('users').add({
    //   'name': name,
    //   'email': email,
    //   'age': age,
    // });
  }

  void changeStatus(Schedule input){

  }

  void deleteSchedule(Schedule input){
    
  }
}

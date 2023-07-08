import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  //refferance the box
  final _myBox = Hive.box('mybox');

  List toDoList = [];

// Run this method when app runs for the first time
  void createInitialData() {
    toDoList = [
      ["Task 01", false],
      ["Task 02", true],
    ];
  }

//Load the data from the database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}

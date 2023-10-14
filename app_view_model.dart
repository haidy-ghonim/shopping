import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping/models/task_model.dart';
import 'package:shopping/models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> tasks = <Task>[];
  User user = User("Jon Snow");
  Color clrlvl1 = Colors.grey.shade50;
  Color clrlvl2 = Colors.grey.shade200;
  Color clrlvl3 = Colors.grey.shade600;
  Color clrlvl4 = Colors.pink.shade900;

  int get numTasks=> tasks.length;



  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  String getTaskTitle(int taskIndex)
  {
    return tasks[taskIndex].title;
  }


  bool getTaskValue(int taskIndex){
    return tasks[taskIndex].complete;
       }

  void setTaskValue (int taskIndex, bool taskValue ){
    tasks[taskIndex].complete = taskValue;
    notifyListeners();
     }


   void deleteTask(int taskIndex){
    tasks.removeAt(taskIndex);
    notifyListeners();
   }


  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context) {
          return bottomSheetView;
        }));
  }
}

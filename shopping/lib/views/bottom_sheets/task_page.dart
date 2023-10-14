import 'package:flutter/material.dart';
import 'package:shopping/views/bottom_sheets/add_task_view.dart';
import 'package:shopping/views/bottom_sheets/task_list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          //Header View
          Expanded(flex: 1, child: Container(color:Colors.yellow,),),

          //Task Info View
          Expanded(flex: 1, child:TaskListView()),
          //Container(color:Colors.orangeAccent,),
          //Task List View
          Expanded(flex: 7, child: TaskListView()),
          //Container(color:Colors.blue,),



        ],
        ),
      ),
      floatingActionButton:const AddTaskView());
  }
}

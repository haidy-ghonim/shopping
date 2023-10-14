import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/view_models/app_view_model.dart';

class TaskInfoView extends StatelessWidget {
  const TaskInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder:
        (context, viewModel, child){
      return Container(
        decoration:BoxDecoration(color: viewModel.clrlvl2,
            borderRadius: BorderRadius.circular(10)),
        child:Column(
          children: [
            Text("${viewModel.numTasks}"),Text("Total Task")],
        ));
    });
  }
}

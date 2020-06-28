import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function logPressCallback;

  TaskTile({this.isChecked,this.taskTitle,this.checkboxCallback,this.logPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Icon(Icons.delete, color: Colors.red.shade600,size: 25.0,),
      onPressed: logPressCallback,
      ),
      title: Text(taskTitle,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null,
      ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}



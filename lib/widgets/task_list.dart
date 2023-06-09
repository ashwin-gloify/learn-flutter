import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) CheckBoxChange;
  final void Function() delete;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.CheckBoxChange,
      required this.delete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            fontSize: 18,
            fontWeight: FontWeight.w400),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: CheckBoxChange,
      ),
      onLongPress: delete,
    );
  }
}




// 
//     return Consumer<TaskData>(
//       builder: (context, data, child) {
//         return ListView.builder(
//             itemCount: data.task.length,
//             itemBuilder: (context, index) {
//               return TaskTile(
//                 taskTitle: data.task[index].name,
//                 isChecked: data.task[index].isDone,
//                 CheckBoxChange: (newValue) {
//                   data.update(data.task[index]);
//                 },
//                 delete: () {
//                   data.deleteTask(data.task[index]);
//                 },
//               );
//             });
//       },
//     );
//   }
// }
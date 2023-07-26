import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_data.dart';


class AddTaskScreen extends StatelessWidget {

  final Function AddTaskCallBack;
  AddTaskScreen(this.AddTaskCallBack);

  @override
  Widget build(BuildContext context) {
    String? NewTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Add Task",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (NewTask){
              NewTaskTitle= NewTask;
            }
            ,
          ),
          SizedBox(height: 30,),
          TextButton( onPressed: ()
          {

            Provider.of<TaskData>(context, listen: false)
                .addTask(NewTaskTitle!);
            Navigator.pop(context);
          },
            child: Text('Add'),
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            primary: Colors.white
          ),)
        ],
      ),

    );

  }
}

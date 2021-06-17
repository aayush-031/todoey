import 'package:flutter/material.dart';
import 'package:todoey/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTile;
    return Container(
       child: Container(
         color: Color(0xff757575),
         child: Container(
           padding: EdgeInsets.all(25),
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.only(
             topRight: Radius.circular(20),
             topLeft: Radius.circular(20),
           )
         ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 Text('Add Task', textAlign: TextAlign.center,style: TextStyle(color: Colors.lightBlueAccent,fontSize: 25),),
                 TextField(
                   autofocus: true,
                   textAlign: TextAlign.center,
                   onChanged: (newValue){
                    newTaskTile =newValue;
                 },),
               //  SizedBox(height: 10,),
                 FlatButton(
                   child: Text('Add'),
                   color: Colors.lightBlueAccent,
                   onPressed: (){
                    Provider.of<TaskData>(context,listen: false).addTask(newTaskTile);
                    Navigator.pop(context);
                 },)
               ],
             ),
        )
       ),
    );
  }
}

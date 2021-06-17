import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'add_task_screen.dart';


class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.lightBlueAccent,
       onPressed: (){
         showModalBottomSheet(context: context,
             builder: (context) => AddTaskScreen());
       },
       child: Icon(Icons.add),
     ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           padding: EdgeInsets.only(top: 60,left: 30,bottom: 30,right: 30),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                   backgroundColor: Colors.white,
                   radius: 30,
                  child: Icon(Icons.list,size: 30,color: Colors.lightBlueAccent,)),
              SizedBox(height: 10,),
              Text('Todoey',style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.w700,)),
              Text('${Provider.of<TaskData>(context).tasks.length} Task',
                style: TextStyle(fontSize: 18,color: Colors.white),),
            ],
           ),
         ),
         Expanded(
           child: Container(
             padding: EdgeInsets.symmetric(horizontal: 20),
             decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
             ),
             child: TaskList(),
           ),
         )
       ],
     )
    );
  }
}




import 'package:flutter/cupertino.dart';
import 'tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks =[
    Task(name :'milk'),
    Task(name: 'code'),
    Task(name: 'etc'),
  ];
 int get taskCount{
   return tasks.length;
 }
 void addTask(String newTaskTitle){
   final task= Task(name: newTaskTitle);
   tasks.add(task);
   notifyListeners();
 }
 void updateTask(Task task){
   task.toggleDone();
   notifyListeners();
 }
 void deleteTask(Task task){
   tasks.remove(task);
   notifyListeners();
 }
}
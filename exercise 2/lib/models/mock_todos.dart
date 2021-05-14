// TODO  Create some mock data about todo list as well as mock data of task list for each todo item.

import 'todo.dart';
import 'task.dart';

var t1 = Todo(title: "title 1 ", tasklist: myTask1);
var t2 = Todo(title: "title 2 ", tasklist: myTask2);
var t3 = Todo(title: "title 3 ", tasklist: myTask1);
var task1 = Task(title: " this is a task title", completed: false);
var task2 = Task(title: " Finish PSM", completed: false);

var task3 = Task(title: "Finish JEX1", completed: false);
var task4 = Task(title: "Finish PSM chapter 2", completed: false);
var task5 = Task(title: "Finish PSM chapter 3", completed: false);
var task6 = Task(title: "Finish PSM chapter 1", completed: false);
final myTodoList = <Todo>[t1, t2, t3];
final myTask1 = <Task>[task3, task1, task2];
final myTask2 = <Task>[
  task6,
  task4,
  task5,
];

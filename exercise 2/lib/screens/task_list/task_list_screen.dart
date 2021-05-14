// TODO Complete this file. This class should receive data from the TodoListScreen. This class should pass data to the classes Bar, Body and Float
//
import 'package:exercise2/models/todo.dart';
import 'package:flutter/material.dart';

// import '../../models/todo.dart';
import 'float.dart';
import 'bar.dart';
import 'body.dart';

class TaskListScreen extends StatefulWidget {
  static Route route({data}) =>
      MaterialPageRoute(builder: (_) => TaskListScreen(data: data));

  TaskListScreen({data}) : _data = data;
  final _data;

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  void updateComplete(data) {
    data.toggleCompleted();
    setState(() {});
  }

  void updateDelete(index) {
    widget._data.tasklist.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(title: widget._data.title),
          body: Body(
            state: this,
            data: widget._data.tasklist,
          ),
          floatingActionButton: Float(data: widget._data),
        ),
      ),
    );
  }
}

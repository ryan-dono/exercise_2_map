// TODO Complete this file. This class should receive data from the main(). This class should pass data to the classes Bar and Body

import 'package:flutter/material.dart';

// import '../../models/todo.dart';
import 'bar.dart';
import 'body.dart';

class TodoListScreen extends StatefulWidget {
  TodoListScreen({data}) : _data = data;
  final _data;
  get data => _data;
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  void updateNewTodo(oldTodo, newTodo) {
    for (int x = 0; x < widget._data.length; x++) {
      if (identical(widget._data[x], oldTodo)) {
        widget._data[x] = newTodo;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(),
          body: Body(
            data: widget._data,
            state: this,
          ),
        ),
      ),
    );
  }
}

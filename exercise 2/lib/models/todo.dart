// TODO Define the model class Todo here. The attributes are given. Complete the rest.

import 'package:flutter/cupertino.dart';

import 'task.dart';

class Todo {
  String _title;
  List<Task> _taskList;

  Todo({title, tasklist})
      : _taskList = tasklist,
        _title = title;
  get tasklist => _taskList;
  set tasklist(value) => _taskList = value;
  get title => _title;
  get subtitle => 'This todo has $count items';
  get count => _taskList.length;

  Todo copy({title, tasklist}) {
    return Todo(
      tasklist: tasklist ?? this._taskList,
      title: title ?? this._title,
    );
  }

  Todo updateNewTodo({tasklist, title}) {
    return Todo(tasklist: tasklist ?? this._taskList, title: _title);
  }

  List<Task> copyList(data) {
    List<Task> copyTask;
    copyTask = [];
    data.forEach((val) {
      copyTask.add(Task(completed: val.completed, title: val.title));
    });
    return copyTask;
  }

  double getPercentage() {
    int x = 0;
    _taskList.forEach((element) {
      element.completed == true ? x++ : x;
    });
    return (x / count) * 100;
  }
}

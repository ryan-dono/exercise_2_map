// TODO Complete this file. This class should receive data from the TodoListScreen. The UI structure has been provided
//

import 'package:flutter/material.dart';
import '../../models/task.dart';
import '../../models/todo.dart';
import '../task_list/task_list_screen.dart';

class Body extends StatelessWidget {
  Body({data, state})
      : _data = data,
        _state = state;

  final List<Todo> _data;
  final _state;

  void _navigate(context, Todo data, index) async {
    List<Task> copyTask = data.copyList(data.tasklist);
    var copyTodo = data.copy(tasklist: copyTask);
    final result =
        await Navigator.push(context, TaskListScreen.route(data: copyTodo));

    if (result == null) {
    } else {
      _state.updateNewTodo(_data[index], result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _data.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
        title: Text('${_data[index].title}'),
        subtitle: Text('${_data[index].subtitle}'),
        trailing: CircleAvatar(
          child: Text('${_data[index].getPercentage().toStringAsFixed(0)}%'),
        ),
        onTap: () => _navigate(context, _data[index], index),
      ),
    );
  }
}

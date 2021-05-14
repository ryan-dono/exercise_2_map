// TODO Complete this file. This class should receive data from the TaskListScreen. The UI structure has been provided.
//
import 'package:exercise2/models/task.dart';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({data, state})
      : _state = state,
        _data = data;
  final List<Task> _data;
  final _state;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _data.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
          title: Text('${_data[index].title}',
              style: _data[index].completed == true
                  ? TextStyle(decoration: TextDecoration.lineThrough)
                  : null),
          onTap: () {
            _state.updateComplete(_data[index]);
          },
          onLongPress: () {
            _state.updateDelete(index);
          }),
    );
  }
}

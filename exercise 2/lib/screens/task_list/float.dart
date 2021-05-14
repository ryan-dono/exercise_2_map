// TODO Complete this file. This class should receive data from the TaskListScreen.
//

import 'package:flutter/material.dart';

class Float extends StatelessWidget {
  Float({data}) : _data = data;
  final _data;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () => Navigator.pop(context, _data),
          label: Text('Update'),
          icon: Icon(Icons.check_circle),
        ),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () => Navigator.pop(context, null),
          label: Text('Cancel'),
          icon: Icon(Icons.cancel),
        ),
      ],
    );
  }
}

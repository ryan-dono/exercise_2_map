// //? This class is fully given.
// //? You may want to refer to this class to define other model clases

class Task {
  String _title;
  bool _completed;
  get title => _title;
  get completed => _completed;
  void toggleCompleted() => _completed = !_completed;

  Task({title, completed})
      : _completed = completed,
        _title = title;
}

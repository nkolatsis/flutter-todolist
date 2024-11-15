import 'package:isar/isar.dart';

import '../../domain/models/todo.dart';

part 'isar_todo.g.dart';

@collection
class TodoIsar {
  Id id = Isar.autoIncrement;
  late String text;
  late bool isCompleted;

  Todo toDomain() {
    return Todo(
      id: id,
      text: text,
      isCompleted: isCompleted,
    );
  }

  static TodoIsar fromDomain(Todo todo) {
    /*
    final todoIsar = TodoIsar();
    todoIsar.id = todo.id;
    todoIsar.text = todo.text;
    todoIsar.isCompleted = todo.isCompleted;
    return todoIsar;
    */
    return TodoIsar()
      ..id = todo.id
      ..text = todo.text
      ..isCompleted = todo.isCompleted;
  }
}

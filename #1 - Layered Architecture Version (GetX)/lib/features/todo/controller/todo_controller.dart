import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../../../common/controller/api_operation.dart';
import '../data/model/todo.dart';
import '../data/provider/remote/todo_api.dart';

class ToDoController extends GetxController with StateMixin<List<ToDo>>, ApiOperationMixin {
  final ToDoApi todoApi = ToDoApi();
  List<ToDo> todoList = <ToDo>[].obs;
  RxInt todosCount = 0.obs;

  void createTodo(ToDo todo) async {
    requestMethodTemplate(todoApi.createTodo(todo));
  }

  void updateTodo(ToDo todo) async {
    requestMethodTemplate(todoApi.updateTodo(todo));
  }

  void deleteTodo(ToDo todo) async {
    requestMethodTemplate(todoApi.deleteTodo(todo));
  }

  Future<void> getTodos(int userId, {Status? status}) async {
    change(null, status: RxStatus.loading());
    Either<String, List<ToDo>> failureOrSuccess =
        await todoApi.getTodos(userId, status: status);
    failureOrSuccess.fold(
      (String failure) {
        change(null, status: RxStatus.error(failure));
      },
      (List<ToDo> todos) {
        todosCount.value = todos.length;
        todoList = todos.obs;
        if (todoList.isEmpty) {
          change(null, status: RxStatus.empty());
        } else {
          change(todos, status: RxStatus.success());
        }
      },
    );
  }
}

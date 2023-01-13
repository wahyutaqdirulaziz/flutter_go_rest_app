
import '../../../../common/network/api_result.dart';
import '../../data/models/todo.dart';
import '../entities/todo_entity.dart';

abstract class TodoRepository {
  Future<ApiResult<List<ToDo>>> getTodos(int userId, {TodoStatus? status});

  Future<ApiResult<bool>> createTodo(ToDo todo);

  Future<ApiResult<bool>> updateTodo(ToDo todo);

  Future<ApiResult<bool>> deleteTodo(ToDo todo);
}

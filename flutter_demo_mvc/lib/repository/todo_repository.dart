import 'dart:convert';
import 'package:flutter_demo_mvc/models/todo.dart';
import 'package:flutter_demo_mvc/repository/repository.dart';
import 'package:http/http.dart' as http;

class TodoRepository implements Repository {
  String dataURL = "https://jsonplaceholder.typicode.com";

  @override
  Future<String> deletedTodo(Todo todo) async {
    String resdata = "ok";
    return resdata;
  }

  @override
  Future<List<Todo>> getTodoList() async {
    List<Todo> todoList = [];

    var url = Uri.parse('$dataURL/todos');
    var response = await http.get(url);
    print("status code : ${response.statusCode}");
    var body = json.decode(response.body);
    print("decod body : ${body}");
    // 파싱 ..

    for (var i = 0; i < body.length; i++) {
      todoList.add(Todo.fromJson(body[i]));
    }
    return todoList;
  }

  // REST API
  // GET, DELETE (body x)
  // POST, PUT, PATCH (body o)
  @override
  Future<String> patchCompleted(Todo todo) async {
    var uri = Uri.parse('$dataURL/todos/${todo.id}');
    String resData = "";
    await http.patch(
      uri,
      body: {
        'completed': (todo.completed!).toString(),
      },
    ).then((response) {
      print("response : ${response.body}");
      Map<String, dynamic> result = json.decode(response.body);
      return resData = result['completed'];
    });
    return resData;
  }

  @override
  Future<String> postTodo(Todo todo) {
    // TODO: implement postTodo
    throw UnimplementedError();
  }

  @override
  Future<String> putCompleted(Todo todo) async {
    var uri = Uri.parse('$dataURL/todos/${todo.id}');
    String resData = "";
    await http.patch(
      uri,
      body: {
        'id': (todo.id!).toString(),
      },
    ).then((response) {
      print("response : ${response.body}");
      Map<String, dynamic> result = json.decode(response.body);
      return resData = result['id'];
    });
    return resData;
  }
}

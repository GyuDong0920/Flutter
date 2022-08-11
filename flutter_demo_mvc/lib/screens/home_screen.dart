import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_demo_mvc/controller/todo_controller.dart';
import 'package:flutter_demo_mvc/repository/repository.dart';
import 'package:flutter_demo_mvc/repository/todo_repository.dart';
import 'package:http/http.dart';

import '../models/todo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todoController = TodoController(TodoRepository());

    return Scaffold(
      appBar: AppBar(
        title: Text("REST API EX"),
      ),
      body: FutureBuilder<List<Todo>>(
        future: todoController.fetchTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("ERROR"),
            );
          }
          return buildBodyContent(snapshot, todoController);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

SafeArea buildBodyContent(
    AsyncSnapshot<List<Todo>> snapshot, TodoController todoController) {
  return SafeArea(
    child: ListView.separated(
        itemBuilder: (context, index) {
          var todo = snapshot.data?[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 100.0,
            child: Row(
              children: [
                Expanded(flex: 1, child: Text("${todo?.id}")),
                Expanded(flex: 3, child: Text("${todo?.title}")),
                Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              todoController
                                  .updatePutCompleted(todo!)
                                  .then((value) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  duration: const Duration(milliseconds: 500),
                                  content: Text("$value"),
                                ));
                              });
                            },
                            child: buildCallContainer(
                                'put', Color.fromARGB(255, 176, 61, 153))),
                        InkWell(
                            onTap: () {
                              todoController
                                  .updatePacthCompleted(todo!)
                                  .then((value) => {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          duration:
                                              const Duration(milliseconds: 500),
                                          content: Text('$value'),
                                        ))
                                      });
                            },
                            child: buildCallContainer(
                                'patch', Color.fromARGB(255, 36, 72, 183))),
                        InkWell(
                            onTap: () {
                              todoController.deleteTodo(todo!.id).then((value) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  duration: const Duration(milliseconds: 500),
                                  content: Text('$value'),
                                ));
                              });
                            },
                            child:
                                buildCallContainer('del', Color(0xFFFFCDD2))),
                      ],
                    ))
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 0.5,
            height: 0.5,
          );
        },
        itemCount: snapshot.data?.length ?? 0),
  );
}

Container buildCallContainer(String title, Color color) {
  return Container(
    width: 40.0,
    height: 40.0,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(10.0)),
    child: Center(
      child: Text('${title}'),
    ),
  );
}

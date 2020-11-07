
import 'package:flutter/material.dart';

import 'todo_controller.dart';

class AddTodo extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Adicionar Tarefa'),
            actions: [IconButton(icon: Icon(Icons.close), onPressed: (){
              Navigator.of(context).pushReplacementNamed('/todo');
            })],
            ),
          body: Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller:_controller,
                      decoration: InputDecoration(
                        labelText: 'To-Do',
                        border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed:(){
                      TodoController.instance.addTarefa(_controller.text);
                      _controller.clear();
                    },
                    child: Container(
                      child: Text('Adicionar Tarefa'),
                    ),
                  ),
                ]
              ),
            );
  }
}
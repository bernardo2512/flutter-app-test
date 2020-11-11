
import 'package:flutter/material.dart';

import 'todo_controller.dart';

class AddTodo extends StatelessWidget {
  final TextEditingController _controllerTitulo = TextEditingController();
  final TextEditingController _controllerDescricao = TextEditingController();

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
                      controller:_controllerTitulo,
                      decoration: InputDecoration(
                        labelText: 'Titulo Tarefa',
                        border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller:_controllerDescricao,
                      decoration: InputDecoration(
                        labelText: 'Descricao',
                        border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed:(){
                      TodoController.instance.addTarefa(_controllerTitulo.text,_controllerDescricao.text);
                      _controllerTitulo.clear();
                      _controllerDescricao.clear();
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
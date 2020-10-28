import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<String> todoList = [];
  String todo = 'a';
  final TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("To-Do List"),
            actions: [],
          ),
          body: Column(
              children: [
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
                    todoList.add(_controller.text);
                    _controller.clear();
                    print(todoList);

                  },
                  child: Container(
                    child: Text('Adicionar Tarefa'),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (ctx,i) => Text(todoList[i])
                  ),
                )
                
              ],
            ),
    );
  }

}
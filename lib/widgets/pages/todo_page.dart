import 'package:flutter/material.dart';

import '../../todo_controller.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("To-Do List"),
            actions: [IconButton(icon: Icon(Icons.add_circle_outline), onPressed:(){
              Navigator.of(context).pushReplacementNamed('/addtodo');
            }),
              IconButton(icon: Icon(Icons.close), onPressed: (){
                          Navigator.of(context).pushReplacementNamed('/home');
            }),  
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [Container(
                width: 150,
                height: 25,
                alignment: Alignment.center,
                child: Text("A fazer: "),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),Divider(
                color: Colors.grey,
              ),
                Expanded(
                      child: ListView.builder(
                itemCount: TodoController.instance.todoList.length,
                itemBuilder: (ctx,i) => Dismissible(
                  direction: DismissDirection.endToStart,
                  background: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.red,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.delete_forever)
                        ), 
                      ),
                  ),
                    key: Key(
                      TodoController.instance.getTarefa(i).text
                      ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Card(
                            color: Colors.white,
                            
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    TodoController.instance.getTarefa(i).text,
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                  ),
                                  Container(
                                    width: 400,
                                  ),
                                  Text(
                                    TodoController.instance.getTarefa(i).textDescricao,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                              )
                            ),
                        ),
                      onDismissed: (ditection){
                    setState(() {
                      TodoController.instance.removeTarefa(i); 
                    });
                  },
                   )
                   ),
                ),
              ],
            ),
          ),
    );
  }

} 


import 'package:flutter/widgets.dart';

class TodoController extends ChangeNotifier {

  static TodoController instance = TodoController();
  List<String> todoList = [];

  addTarefa(String tarefa){
    this.todoList.add(tarefa);
  }


  getTarefa(int index){
    return this.todoList[index];
  }

  removeTarefa(int index){
    this.todoList.remove(this.getTarefa(index));
  }
}
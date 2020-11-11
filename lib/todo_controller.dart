
import 'package:flutter/widgets.dart';

import 'tarefa.dart';

class TodoController extends ChangeNotifier {

  static TodoController instance = TodoController();
  List<Tarefa> todoList = [];

  addTarefa(String titulo, String desc){
    this.todoList.add(Tarefa(titulo: titulo,descricao: desc));
  }


  getTarefa(int index){
    return this.todoList[index];
  }

  removeTarefa(int index){
    this.todoList.remove(this.getTarefa(index));
  }
}
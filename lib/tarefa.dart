class Tarefa{
  final int id;
  final String descricao;

  Tarefa({this.id,this.descricao});

  factory Tarefa.fromJson(Map<String,dynamic> json){
    return Tarefa(
      id:json['id'],
      descricao: json['descricao']
    );
  }
}
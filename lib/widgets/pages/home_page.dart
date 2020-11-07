
import 'package:flutter/material.dart';

import '../../app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
  
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://pbs.twimg.com/profile_images/1266204182287179776/7MKodHz1_400x400.jpg'
                )
              ),
              accountName: Text('Bernardo Luz'),
              accountEmail: Text('beluz2512@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text("Tela de Inicio"),
              onTap: (){
                print('Home');
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('To-Do'),
              subtitle: Text("To-Do List"),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/todo');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              subtitle: Text("Finalizar Sessao"),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Primeiro App"),
        actions: [
          CustomSwitch()
        ],
      ),
      body: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text("Contador: $counter"),
              CustomSwitch (),
              Container(
                height: 50,
              ),
            
            ]
          ),
      ),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () { 
        setState(() {
        counter++;
        });
      }),
    );
  }

}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.isDartTheme,
          onChanged: (value){  
            AppController.instance.changeTheme();
        },
    );
  }
}
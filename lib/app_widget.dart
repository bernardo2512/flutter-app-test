import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

import 'desafio_page.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'todo_page.dart';

class AppWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
              theme: ThemeData(
                primarySwatch: Colors.deepPurple,
                brightness: AppController.instance.isDartTheme ? Brightness.dark : Brightness.light
              ),
              initialRoute: '/',
              routes: {
                '/': (context) => LoginPage(),
                '/home': (context) => HomePage(),
                '/desafio': (context) => DesafioPage(),
                '/todo': (context) => TodoPage(),
              },
            );
        },
      );
  }
}
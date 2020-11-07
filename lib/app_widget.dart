import 'package:flutter/material.dart';

import 'addtodo.dart';
import 'app_controller.dart';
import 'widgets/pages/home_page.dart';
import 'widgets/pages/login_page.dart';
import 'widgets/pages/todo_page.dart';

class AppWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
              theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: AppController.instance.isDartTheme ? Brightness.dark : Brightness.light
              ),
              initialRoute: '/',
              routes: {
                '/': (context) => LoginPage(),
                '/home': (context) => HomePage(),
                '/todo': (context) => TodoPage(),
                '/addtodo': (context) => AddTodo(),
              },
            );
        },
      );
  }
}
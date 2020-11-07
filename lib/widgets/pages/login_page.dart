import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(){
    return SingleChildScrollView(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/img/logo.png')
                    ),
                    Container(height: 20,),
                    Card(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
                          child: Column(
                            children: [
                            TextField(
                                onChanged: (text){
                                    email = text;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder()
                                ),
                              ),
                            SizedBox(height: 20),
                            TextField(
                              onChanged: (text){
                                  password = text;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            SizedBox(height: 15),
                              RaisedButton(
                                color: Colors.deepPurple,
                                onPressed: (){
                            if(email != null && password == '123'){
                              Navigator.of(context).pushReplacementNamed('/home');
                            }else {
                              print("Login Invalido");
                            }
                          },child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              textAlign: TextAlign.center,
                            )
                          ),
                          )
                          ]),
                        ),
                    ),
                    SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/img/background.png',fit: BoxFit.cover,)
            ),
            Container(color: Colors.black.withOpacity(0.2),),
          _body(),
        ],
      )
    );
  }
}
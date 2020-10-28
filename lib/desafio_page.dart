import 'package:flutter/material.dart';

class DesafioPage extends StatefulWidget {
  @override
  _DesafioPageState createState() => _DesafioPageState();
}

class _DesafioPageState extends State<DesafioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tinder'),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color:Colors.redAccent
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/img/logotinder.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:30.0,bottom: 10.0),
                  child: Text(
                    "Location Changer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                    "Plugin app for Tinder",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Container(height: 30,)
                  ,
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: RaisedButton(
                  color: Colors.white,
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed('/home');
                  },child: Container(
                  width: 200,
                  child: Text(
                      'Login with Facebook',
                      textAlign: TextAlign.center,
                  )
                  ),
              ),
                )
              ],
            )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override 
  
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'De casa Login',
    theme: ThemeData(
      primarySwatch: Colors.deepPurple
    ),
    home: LoginPage(),
);
  } 
}

class LoginPage extends StatefulWidget {
  @override 
  State<StatefulWidget> createState(){
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  
  @override 
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }
  @override 
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.6,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF81e096),
                      Color(0xFF009620),
                      
                    ]
                    ),
                ), 
                child: Stack(
                  children: <Widget>[
                    Align(
                        child: Icon(Icons.person,
                        size: 70,
                        color: Colors.white
                        ),
                   ),

                ],)
                ),
                Container(
                  padding: EdgeInsets.only(top:75),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: 60,
                        padding: EdgeInsets.only(
                          top:4,left:16,right: 16,bottom: 12
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50)
                            ),
                          color:Colors.white,
                          boxShadow:[ 
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5 
                              )
                            ]
                          ),
                        child: TextField(
                          decoration:InputDecoration(
                              icon: Icon(Icons.email,
                              color: Colors.grey,
                              ),
                              hintText: 'Email',
                            ),
                        ), 
                      
                      ),
                      
                  ],
                ),
              ),
                Container(
                  padding: EdgeInsets.only(top:15),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: 60,
                        padding: EdgeInsets.only(
                          top:4,left:16,right: 16,bottom: 12
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50)
                            ),
                          color:Colors.white,
                          boxShadow:[ 
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5 
                              )
                            ]
                          ),
                        child: TextField(
                          decoration:InputDecoration(
                              icon: Icon(Icons.security,
                              color: Colors.grey,
                              ),
                              hintText: 'Senha',
                            ),
                        ), 
                      
                      ),
                      
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    child: Text('Esqueceu a senha?'), 
                    padding: const EdgeInsets.only(
                      top: 12,
                      right: 18
                    )
                    )
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    child: Text('Esqueceu a senha?'), 
                    padding: const EdgeInsets.only(
                      top: 12,
                      right: 18
                    )
                    )
              ),              

            ],
            ),
        ),

      );
    }
}

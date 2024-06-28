import 'package:flutter/material.dart';
import 'package:myapp/MyAppState.dart';
import 'package:provider/provider.dart';


class SignIn extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var appState = context.watch<MyAppState>();
    return ElevatedButton.icon(
      onPressed: (){
        appState.logIn();
      },
      icon: Text('Log In'),
      label: Text(''),
      )
    ;
  }

}
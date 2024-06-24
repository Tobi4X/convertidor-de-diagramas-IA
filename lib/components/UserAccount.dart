import 'package:flutter/material.dart';
import 'package:myapp/MyAppState.dart';
import 'package:provider/provider.dart';

class UserAccount extends StatelessWidget{
  Widget build(BuildContext context){
    var appState = context.watch<MyAppState>();

    return ElevatedButton.icon(
      onPressed: (){
        appState.logOut();
      },
      icon: Text('Log Out'),
      label: Text(''),
    );
  }
}
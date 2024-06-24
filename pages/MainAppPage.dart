import 'package:flutter/material.dart';
import 'package:myapp/MyAppState.dart';
import 'package:myapp/pages/HomePage.dart';
import 'package:myapp/pages/LoginPage.dart';
import 'package:provider/provider.dart';

class MainAppPage extends StatefulWidget{
  @override
  State<MainAppPage> createState() => _MainAppPage();
}

class _MainAppPage extends State<MainAppPage>{
  Widget build(BuildContext context){

    var appState = context.watch<MyAppState>();

    if(!appState.isSignedIn){
        return LoginPage();
    }
    return HomePage();
  }
}
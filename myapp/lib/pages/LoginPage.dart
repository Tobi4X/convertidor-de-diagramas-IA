import 'package:flutter/material.dart';
import 'package:myapp/components/SignIn.dart';

class LoginPage extends StatefulWidget{
  @override
// Suggested code may be subject to a license. Learn more: ~LicenseLog:387105829.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3820961260.
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3018949262.
  Widget build(BuildContext context){
    return
      SignIn();
  }
}
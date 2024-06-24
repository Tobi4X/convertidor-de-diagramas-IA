import 'package:flutter/material.dart';
import 'package:myapp/pages/MainAppPage.dart';
import 'package:provider/provider.dart';
import 'package:myapp/MyAppState.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (wordContext) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        ),
        home: MainAppPage(),
      ),
    );
  }
}
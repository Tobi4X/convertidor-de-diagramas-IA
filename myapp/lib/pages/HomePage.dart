import 'package:flutter/material.dart';
import 'package:myapp/components/homediagramas/listarDiagramas.dart';
import '../components/UserAccount.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context){
    Widget page;
    switch (selectedIndex){
      case 0:
        page = ListarDiagramas();
        break;
      case 1:
        page = UserAccount();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(
      builder: (context, constraint) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraint.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.person), 
                      label: Text('My Account')
                    )
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                )
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                )
              )
            ],
            ),
        );
      }
    );
  }
}
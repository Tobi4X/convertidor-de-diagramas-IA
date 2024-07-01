import 'package:flutter/material.dart';
import 'package:myapp/MyAppState.dart';
import 'package:myapp/components/diagramar/Diagramar.dart';
import 'package:myapp/components/homediagramas/MiniaturaDiagrama.dart';
import 'package:provider/provider.dart';

class ListarDiagramas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var appState = context.watch<MyAppState>();
    var diagramView = appState.diagView;
    if(!diagramView){ return MiniaturaDiagrama();};
    return Diagramar();
  }
}
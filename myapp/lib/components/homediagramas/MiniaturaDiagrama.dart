import 'package:flutter/material.dart';
import 'package:myapp/MyAppState.dart';
import 'package:myapp/components/diagramar/Diagramar.dart';
import 'package:provider/provider.dart';

class MiniaturaDiagrama extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return ElevatedButton.icon(
      onPressed: (){
        appState.setDiagram(
          '''classDiagram
        class Element {
            +getPuntaje()
            +getTiempo()
            +getConceptos()
            +buscar(texto)
        }

        class Unidad {
            +getPuntaje()
            +getTiempo()
            +getConceptos()
        }

        class Pregunta {
            +String enunciado
            +double puntaje
            +double tiempoEstimado
            +addConcepto(concepto)
            +override getTiempo()
        }

        class PreguntaTiempoVariable {
            +override getTiempo()
        }

        class Comparador {
            +compararPorEnunciado(pregunta)
            +compararPorPuntaje(pregunta)
            +compararPorTiempo(pregunta)
        }

        class Filtros {
            +filtrarPorConcepto(concepto)
            +filtrarPorPuntaje(minPuntaje, maxPuntaje)
            +filtrarPorTiempo(minTiempo, maxTiempo)
            +filtrarPorAño(año)
            +filtrarPorMes(mes)
            +filtrarPorDía(día)
        }

        Element <|-- Unidad
        Element <|-- Pregunta
        Unidad <|-- PreguntaTiempoVariable
        Element <|-- Comparador
        Element <|-- Filtros

        Unidad <|-- Secuencial
        Unidad <|-- Optativa
        Unidad <|-- Restrictiva

        Restrictiva <|-- Pregunta
        Optativa <|-- getPuntaje
        Optativa <|-- getTiempo

        Pregunta <|-- String enunciado
        Pregunta <|-- double puntaje
        Pregunta <|-- double tiempoEstimado
        Pregunta <|-- addConcepto
        Pregunta <|-- override getTiempo

        PreguntaTiempoVariable <|-- override getTiempo
        '''
        );
        appState.setDiagView(true);
      },
        label: Icon(Icons.account_tree)
    );
  }
}
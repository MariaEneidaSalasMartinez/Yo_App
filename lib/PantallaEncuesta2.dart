import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class PantallaEncuesta extends StatelessWidget {

  final List preguntas;

  PantallaEncuesta(this.preguntas);

  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Encuesta')
        ),
        body: ListView.builder(
            itemCount: this.preguntas.length,
            itemBuilder: (_, index) {
              Map<String, dynamic> pregunta = Map.from(this.preguntas[index]);
              return ListTile(
                  title: pregunta['pregunta:'] // o pregunta, no recuerdo como se llama en la base de datos
              );
            }
        )
    );
  }

}
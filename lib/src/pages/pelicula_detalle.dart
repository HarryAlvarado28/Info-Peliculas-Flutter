

import 'package:flutter/material.dart';
import 'package:peliculas/src/models/pelicula_model.dart';

class PeliculaDetalle extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final Pelicula pelicula = ModalRoute.of(context).settings.arguments;
    print("Aqui esta la pelicula ${pelicula}");
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text(pelicula.title),
      ),
    );
  }

}
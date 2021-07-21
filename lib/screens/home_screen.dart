import 'package:flutter/material.dart';
import 'package:info_peliculas/providers/movies_provider.dart';
import 'package:info_peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  // const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);

    print(moviesProvider.onDisplayMovies);

    return Scaffold(
        appBar: AppBar(
          title: Text('Películas en cines'),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            // Tarjetas principales
            CardSwiper(movies: moviesProvider.onDisplayMovies),
            // Slider de peliculas
            MovieSlider()
          ],
        )));
  }
}

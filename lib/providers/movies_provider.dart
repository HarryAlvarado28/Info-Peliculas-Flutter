import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:info_peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  String _apiKey = '4b2365e9296c3b96988d2550360506be';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  MoviesProvider() {
    print('MoviesProvider inicializando');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('getOnDisplayMovies');
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    var url = Uri.https(
      _baseUrl,
      '3/movie/now_playing',
      {'api_key': _apiKey, 'language': _language, 'page': '1'},
    );

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
    print(nowPlayingResponse.results[1].title);
  }
}

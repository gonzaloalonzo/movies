import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:movie/src/models/pelicula_model.dart';

class PeliculasProvider {

  String _apikey      ='6b0fe20349d3eaeb43ade25ee5a735c2';
  String _url         = 'api.themoviedb.org';
  String _language    ='es-ES';

  Future<List<Pelicula>> getEnCines() async{

    final url = Uri.https(_url,'/3/movie/now_playing',{
      'api_key'   : _apikey,
      'language'  : _language
      });

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    print(decodedData);

    return [];

  }

}
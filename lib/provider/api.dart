import 'dart:convert';

import 'package:fluttertrandsnews/model/beritaModel.dart';
import 'package:fluttertrandsnews/utils/config.dart';
import 'package:http/http.dart' as client;

class Api {
  Future getBerita() async {
    final berita = await client.get(url + apiKey);
    if (berita.statusCode == 200) {
      return BeritaModel.fromJson(json.decode(berita.body));
    } else {
      print('gagal');
    }
  }
}

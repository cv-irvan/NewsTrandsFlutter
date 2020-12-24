import 'package:flutter/foundation.dart';
import 'package:fluttertrandsnews/model/beritaModel.dart';
import 'package:fluttertrandsnews/provider/repository.dart';
import 'package:rxdart/subjects.dart';

class BeritaBloc {
  final _repository = Repository();
  final _beritaFatcher = PublishSubject<BeritaModel>();

  BehaviorSubject<BeritaModel> get berita => _beritaFatcher.stream;

  getBerita() async {
    BeritaModel beritaModel = await _repository.api.getBerita();
    _beritaFatcher.sink.add(beritaModel);
    dispose();
  }

  dispose() {
    _beritaFatcher.close();
  }
}

final blocBerita = BeritaBloc();

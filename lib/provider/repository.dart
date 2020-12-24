import 'package:fluttertrandsnews/provider/api.dart';

class Repository {
  final api = Api();
  Future getberita() => api.getBerita();
}

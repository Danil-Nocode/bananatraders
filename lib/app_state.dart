import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _spot = '1 sem';
  String get spot => _spot;
  set spot(String _value) {
    _spot = _value;
  }

  String _spotNorte = '1 sem';
  String get spotNorte => _spotNorte;
  set spotNorte(String _value) {
    _spotNorte = _value;
  }

  String _spotCentro = '1 sem';
  String get spotCentro => _spotCentro;
  set spotCentro(String _value) {
    _spotCentro = _value;
  }

  String _spotSur = '1 sem';
  String get spotSur => _spotSur;
  set spotSur(String _value) {
    _spotSur = _value;
  }

  String _CompraNorte = '1';
  String get CompraNorte => _CompraNorte;
  set CompraNorte(String _value) {
    _CompraNorte = _value;
  }

  String _compraCentro = '1';
  String get compraCentro => _compraCentro;
  set compraCentro(String _value) {
    _compraCentro = _value;
  }

  String _compraSur = '1';
  String get compraSur => _compraSur;
  set compraSur(String _value) {
    _compraSur = _value;
  }

  String _tokenvalue =
      'eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsic29tZV93YWxsZXQiXSwiZXhwIjoxODE2MTc4NDIyLCJpc3MiOiJAdG9uYXBpX2JvdCIsImp0aSI6Ik9XQ0ZHMlhWVVJCUTJYU1hGRFNSN0FLSSIsInNjb3BlIjoic2VydmVyIiwic3ViIjoidG9uYXBpIn0.fb1_bzCjW1hylExFNdQGW4DJp7ZrAgQeFqRtxIfR4eGjrdtE9UnDCK4YyzE9U_DzKt84GoErBtisCBD9F2QQDg';
  String get tokenvalue => _tokenvalue;
  set tokenvalue(String _value) {
    _tokenvalue = _value;
  }

  int _Semana = 1;
  int get Semana => _Semana;
  set Semana(int _value) {
    _Semana = _value;
  }

  int _semanaNorte = 1;
  int get semanaNorte => _semanaNorte;
  set semanaNorte(int _value) {
    _semanaNorte = _value;
  }

  int _semanaCentre = 1;
  int get semanaCentre => _semanaCentre;
  set semanaCentre(int _value) {
    _semanaCentre = _value;
  }

  int _semanaSur = 1;
  int get semanaSur => _semanaSur;
  set semanaSur(int _value) {
    _semanaSur = _value;
  }

  DateTime? _yearNorte = DateTime.fromMillisecondsSinceEpoch(1673901180000);
  DateTime? get yearNorte => _yearNorte;
  set yearNorte(DateTime? _value) {
    _yearNorte = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_meulocal')) {
        try {
          final serializedData = prefs.getString('ff_meulocal') ?? '{}';
          _meulocal =
              LocalizacaoStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _varlatitude = 0.0;
  double get varlatitude => _varlatitude;
  set varlatitude(double value) {
    _varlatitude = value;
  }

  double _varlongitude = 0.0;
  double get varlongitude => _varlongitude;
  set varlongitude(double value) {
    _varlongitude = value;
  }

  String _local = '';
  String get local => _local;
  set local(String value) {
    _local = value;
  }

  LocalizacaoStruct _meulocal = LocalizacaoStruct();
  LocalizacaoStruct get meulocal => _meulocal;
  set meulocal(LocalizacaoStruct value) {
    _meulocal = value;
    prefs.setString('ff_meulocal', value.serialize());
  }

  void updateMeulocalStruct(Function(LocalizacaoStruct) updateFn) {
    updateFn(_meulocal);
    prefs.setString('ff_meulocal', _meulocal.serialize());
  }

  int _dia = 0;
  int get dia => _dia;
  set dia(int value) {
    _dia = value;
  }

  double _dc = 0.0;
  double get dc => _dc;
  set dc(double value) {
    _dc = value;
  }

  double _er = 0.0;
  double get er => _er;
  set er(double value) {
    _er = value;
  }

  double _resultkl = 0.0;
  double get resultkl => _resultkl;
  set resultkl(double value) {
    _resultkl = value;
  }

  double _evapo = 0.0;
  double get evapo => _evapo;
  set evapo(double value) {
    _evapo = value;
  }

  double _resultcalcgote = 0.0;
  double get resultcalcgote => _resultcalcgote;
  set resultcalcgote(double value) {
    _resultcalcgote = value;
  }

  double _laminaajust = 0.0;
  double get laminaajust => _laminaajust;
  set laminaajust(double value) {
    _laminaajust = value;
  }

  double _resultcalcpivo = 0.0;
  double get resultcalcpivo => _resultcalcpivo;
  set resultcalcpivo(double value) {
    _resultcalcpivo = value;
  }

  double _laminaajustadapivo = 0.0;
  double get laminaajustadapivo => _laminaajustadapivo;
  set laminaajustadapivo(double value) {
    _laminaajustadapivo = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CidaderesultStruct extends BaseStruct {
  CidaderesultStruct({
    String? name,
    double? lat,
    double? lon,
    String? country,
    String? state,
  })  : _name = name,
        _lat = lat,
        _lon = lon,
        _country = country,
        _state = state;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "lon" field.
  double? _lon;
  double get lon => _lon ?? 0.0;
  set lon(double? val) => _lon = val;

  void incrementLon(double amount) => lon = lon + amount;

  bool hasLon() => _lon != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  static CidaderesultStruct fromMap(Map<String, dynamic> data) =>
      CidaderesultStruct(
        name: data['name'] as String?,
        lat: castToType<double>(data['lat']),
        lon: castToType<double>(data['lon']),
        country: data['country'] as String?,
        state: data['state'] as String?,
      );

  static CidaderesultStruct? maybeFromMap(dynamic data) => data is Map
      ? CidaderesultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'lat': _lat,
        'lon': _lon,
        'country': _country,
        'state': _state,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'lon': serializeParam(
          _lon,
          ParamType.double,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
      }.withoutNulls;

  static CidaderesultStruct fromSerializableMap(Map<String, dynamic> data) =>
      CidaderesultStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.double,
          false,
        ),
        lon: deserializeParam(
          data['lon'],
          ParamType.double,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CidaderesultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CidaderesultStruct &&
        name == other.name &&
        lat == other.lat &&
        lon == other.lon &&
        country == other.country &&
        state == other.state;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, lat, lon, country, state]);
}

CidaderesultStruct createCidaderesultStruct({
  String? name,
  double? lat,
  double? lon,
  String? country,
  String? state,
}) =>
    CidaderesultStruct(
      name: name,
      lat: lat,
      lon: lon,
      country: country,
      state: state,
    );

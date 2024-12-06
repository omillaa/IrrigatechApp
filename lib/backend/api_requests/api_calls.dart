import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApiClimaCall {
  static Future<ApiCallResponse> call({
    String? local = '',
    String? key = 'c704bc6c0c3d068b751ff97c9496248c',
    double? lat,
    double? long,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiClima',
      apiUrl:
          'https://api.openweathermap.org/data/2.5/weather?q=$local&appid=$key',
      callType: ApiCallType.GET,
      headers: {
        'x-rapidapi-host': 'weatherapi-com.p.rapidapi.com',
        'x-rapidapi-key': 'aa1dc171b8msh300b8cb034e6274p1738b3jsn20399b7b5967',
      },
      params: {
        'local': local,
        'lat': lat,
        'long': long,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static double? temp(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.main.feels_like''',
      ));
  static int? humi(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.main.humidity''',
      ));
  static double? vento(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.wind.speed''',
      ));
}

class ApilocalCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'APILOCAL',
      apiUrl: 'https://api.ipbase.com/v1/json/',
      callType: ApiCallType.GET,
      headers: {
        'x-rapidapi-host': 'weatherapi-com.p.rapidapi.com',
        'x-rapidapi-key': 'aa1dc171b8msh300b8cb034e6274p1738b3jsn20399b7b5967',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? latitude(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.latitude''',
      ));
  static double? longitude(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.longitude''',
      ));
}

class ApiCidadeCall {
  static Future<ApiCallResponse> call({
    double? lat,
    double? lng,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiCidade',
      apiUrl:
          'https://api.openweathermap.org/geo/1.0/reverse?lat=$lat&lon=$lng&limit=3&appid=c704bc6c0c3d068b751ff97c9496248c',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'lng': lng,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].state''',
      ));
}

class ApiClimasCall {
  static Future<ApiCallResponse> call({
    double? lat,
    double? lon,
    int? temp,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiClimas',
      apiUrl:
          'https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&exclude=&appid=&units=metric&lang=pt&dt=$temp',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'lon': lon,
        'temp': temp,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? currentweatherdescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.current.weather[:].description''',
      ));
  static String? timezone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.timezone''',
      ));
  static int? currenthumidity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.humidity''',
      ));
  static double? currenttemp(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.current.temp''',
      ));
  static double? currentfeelslike(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.current.feels_like''',
      ));
  static double? currentwindspeed(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.current.wind_speed''',
      ));
  static int? currentwinddeg(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.wind_deg''',
      ));
  static double? currentwindgust(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.current.wind_gust''',
      ));
  static String? currentweathericon(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.current.weather[:].icon''',
      ));
}

class ApiHistoricoCall {
  static Future<ApiCallResponse> call({
    double? lon,
    double? lat,
    int? time,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiHistorico',
      apiUrl:
          'https://api.openweathermap.org/data/3.0/onecall/timemachine?lat=$lat&lon=$lon&dt=$time&appid=',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'lon': lon,
        'time': time,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPrevisaoCall {
  static Future<ApiCallResponse> call({
    double? lat,
    double? long,
    int? dt,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiPrevisao',
      apiUrl:
          'https://api.openweathermap.org/data/3.0/onecall/timemachine?lat=$lat&lon=$long&exclude=current,minutely,hourly&dt=$dt&appid=&units=metric&lang=pt',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'long': long,
        'dt': dt,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? datatemp(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data[:].temp''',
      ));
  static String? dataweathericon(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].weather[:].icon''',
      ));
  static String? dataweatherdescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].weather[:].description''',
      ));
  static double? datawindspeed(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.data[:].wind_speed''',
      ));
  static int? datahumidity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].humidity''',
      ));
  static int? datadt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].dt''',
      ));
  static dynamic datarain(dynamic response) => getJsonField(
        response,
        r'''$.data[:].rain''',
      );
  static String? dataweathermain(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].weather[:].main''',
      ));
}

class ApiEvapoCall {
  static Future<ApiCallResponse> call({
    double? lat,
    double? lon,
    String? date = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApiEvapo',
      apiUrl:
          'https://api.openweathermap.org/data/3.0/onecall/day_summary?lat=$lat&lon=$lon&date=$date&appid=&units=metric&lang=pt',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'lon': lon,
        'date': date,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? temperaturemin(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.temperature.min''',
      ));
  static double? precipitationtotal(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.precipitation.total''',
      ));
  static double? temperaturemax(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.temperature.max''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

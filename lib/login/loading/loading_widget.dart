import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'loading_model.dart';
export 'loading_model.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  late LoadingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));
      _model.result2 = await ApiCidadeCall.call(
        lat: functions.getLat(currentUserLocationValue),
        lng: functions.getLong(currentUserLocationValue),
      );

      _model.resultadoclima = await ApiClimasCall.call(
        lat: functions.getLat(currentUserLocationValue),
        lon: functions.getLong(currentUserLocationValue),
        temp: functions.getdata(getCurrentTimestamp),
      );

      _model.apiResultdia1 = await ApiPrevisaoCall.call(
        lat: functions.getLat(currentUserLocationValue),
        long: functions.getLong(currentUserLocationValue),
        dt: functions.dataunixfut(1),
      );

      _model.apiResultdia2 = await ApiPrevisaoCall.call(
        lat: functions.getLat(currentUserLocationValue),
        long: functions.getLong(currentUserLocationValue),
        dt: functions.dataunixfut(2),
      );

      _model.apiResultdia3 = await ApiPrevisaoCall.call(
        lat: functions.getLat(currentUserLocationValue),
        long: functions.getLong(currentUserLocationValue),
        dt: functions.dataunixfut(3),
      );

      _model.apiResultdia4 = await ApiPrevisaoCall.call(
        lat: functions.getLat(currentUserLocationValue),
        long: functions.getLong(currentUserLocationValue),
        dt: functions.dataunixfut(4),
      );

      await Future.delayed(const Duration(milliseconds: 7000));

      context.pushNamed(
        'home',
        queryParameters: {
          'cidade': serializeParam(
            getJsonField(
              (_model.result2?.jsonBody ?? ''),
              r'''$[:].name''',
            ).toString().toString(),
            ParamType.String,
          ),
          'estado': serializeParam(
            functions.getEstado(getJsonField(
              (_model.result2?.jsonBody ?? ''),
              r'''$[:].state''',
            ).toString().toString()),
            ParamType.String,
          ),
          'data': serializeParam(
            functions.getdata(getCurrentTimestamp)?.toDouble(),
            ParamType.double,
          ),
          'descricao': serializeParam(
            getJsonField(
              (_model.resultadoclima?.jsonBody ?? ''),
              r'''$.current.weather[:].description''',
            ).toString().toString(),
            ParamType.String,
          ),
          'humidade': serializeParam(
            getJsonField(
              (_model.resultadoclima?.jsonBody ?? ''),
              r'''$.current.humidity''',
            ),
            ParamType.int,
          ),
          'timezone': serializeParam(
            getJsonField(
              (_model.resultadoclima?.jsonBody ?? ''),
              r'''$.timezone''',
            ).toString().toString(),
            ParamType.String,
          ),
          'temperatura': serializeParam(
            getJsonField(
              (_model.resultadoclima?.jsonBody ?? ''),
              r'''$.current.temp''',
            ),
            ParamType.double,
          ),
          'sensacao': serializeParam(
            getJsonField(
              (_model.resultadoclima?.jsonBody ?? ''),
              r'''$.current.feels_like''',
            ),
            ParamType.double,
          ),
          'vento': serializeParam(
            getJsonField(
              (_model.resultadoclima?.jsonBody ?? ''),
              r'''$.current.wind_speed''',
            ),
            ParamType.double,
          ),
          'direcaovento': serializeParam(
            getJsonField(
              (_model.resultadoclima?.jsonBody ?? ''),
              r'''$.current.wind_deg''',
            ),
            ParamType.int,
          ),
          'rajadavento': serializeParam(
            getJsonField(
              (_model.resultadoclima?.jsonBody ?? ''),
              r'''$.current.wind_gust''',
            ),
            ParamType.double,
          ),
          'icon': serializeParam(
            getJsonField(
              (_model.resultadoclima?.jsonBody ?? ''),
              r'''$.current.weather[:].icon''',
            ).toString().toString(),
            ParamType.String,
          ),
          'temp1': serializeParam(
            getJsonField(
              (_model.apiResultdia1?.jsonBody ?? ''),
              r'''$.data[:].temp''',
            ).toString().toString(),
            ParamType.String,
          ),
          'temp2': serializeParam(
            getJsonField(
              (_model.apiResultdia2?.jsonBody ?? ''),
              r'''$.data[:].temp''',
            ).toString().toString(),
            ParamType.String,
          ),
          'temp3': serializeParam(
            getJsonField(
              (_model.apiResultdia3?.jsonBody ?? ''),
              r'''$.data[:].temp''',
            ).toString().toString(),
            ParamType.String,
          ),
          'temp4': serializeParam(
            getJsonField(
              (_model.apiResultdia4?.jsonBody ?? ''),
              r'''$.data[:].temp''',
            ).toString().toString(),
            ParamType.String,
          ),
          'dia1': serializeParam(
            functions.dttrans(getJsonField(
              (_model.apiResultdia1?.jsonBody ?? ''),
              r'''$.data[:].dt''',
            )),
            ParamType.String,
          ),
          'dia2': serializeParam(
            functions.dttrans(getJsonField(
              (_model.apiResultdia2?.jsonBody ?? ''),
              r'''$.data[:].dt''',
            )),
            ParamType.String,
          ),
          'dia3': serializeParam(
            functions.dttrans(getJsonField(
              (_model.apiResultdia3?.jsonBody ?? ''),
              r'''$.data[:].dt''',
            )),
            ParamType.String,
          ),
          'dia4': serializeParam(
            functions.dttrans(getJsonField(
              (_model.apiResultdia4?.jsonBody ?? ''),
              r'''$.data[:].dt''',
            )),
            ParamType.String,
          ),
          'humidadee': serializeParam(
            getJsonField(
              (_model.apiResultdia1?.jsonBody ?? ''),
              r'''$.data[:].humidity''',
            ).toString().toString(),
            ParamType.String,
          ),
          'descricaoo': serializeParam(
            getJsonField(
              (_model.apiResultdia1?.jsonBody ?? ''),
              r'''$.data[:].weather[:].description''',
            ).toString().toString(),
            ParamType.String,
          ),
          'icon1': serializeParam(
            getJsonField(
              (_model.apiResultdia1?.jsonBody ?? ''),
              r'''$.data[:].weather[:].icon''',
            ).toString().toString(),
            ParamType.String,
          ),
          'icon2': serializeParam(
            getJsonField(
              (_model.apiResultdia2?.jsonBody ?? ''),
              r'''$.data[:].weather[:].icon''',
            ).toString().toString(),
            ParamType.String,
          ),
          'icon3': serializeParam(
            getJsonField(
              (_model.apiResultdia3?.jsonBody ?? ''),
              r'''$.data[:].weather[:].icon''',
            ).toString().toString(),
            ParamType.String,
          ),
          'icon4': serializeParam(
            getJsonField(
              (_model.apiResultdia4?.jsonBody ?? ''),
              r'''$.data[:].weather[:].icon''',
            ).toString().toString(),
            ParamType.String,
          ),
        }.withoutNulls,
        extra: <String, dynamic>{
          kTransitionInfoKey: const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
          ),
        },
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Lottie.asset(
                  'assets/jsons/Animation_-_1732218857329.json',
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  fit: BoxFit.contain,
                  animate: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

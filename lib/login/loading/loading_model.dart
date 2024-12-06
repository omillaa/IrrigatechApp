import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loading_widget.dart' show LoadingWidget;
import 'package:flutter/material.dart';

class LoadingModel extends FlutterFlowModel<LoadingWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ApiCidade)] action in loading widget.
  ApiCallResponse? result2;
  // Stores action output result for [Backend Call - API (ApiClimas)] action in loading widget.
  ApiCallResponse? resultadoclima;
  // Stores action output result for [Backend Call - API (ApiPrevisao)] action in loading widget.
  ApiCallResponse? apiResultdia1;
  // Stores action output result for [Backend Call - API (ApiPrevisao)] action in loading widget.
  ApiCallResponse? apiResultdia2;
  // Stores action output result for [Backend Call - API (ApiPrevisao)] action in loading widget.
  ApiCallResponse? apiResultdia3;
  // Stores action output result for [Backend Call - API (ApiPrevisao)] action in loading widget.
  ApiCallResponse? apiResultdia4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

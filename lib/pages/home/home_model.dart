import '/backend/api_requests/api_calls.dart';
import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  String? cidadenome;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ApiCidade)] action in home widget.
  ApiCallResponse? result3;
  // Model for Nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    navModel.dispose();
  }
}

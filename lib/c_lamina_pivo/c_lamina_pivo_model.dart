import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_lamina_pivo_widget.dart' show CLaminaPivoWidget;
import 'package:flutter/material.dart';

class CLaminaPivoModel extends FlutterFlowModel<CLaminaPivoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for planta widget.
  int? plantaValue;
  FormFieldController<int>? plantaValueController;
  // Stores action output result for [Backend Call - API (ApiEvapo)] action in Button widget.
  ApiCallResponse? apiResultEvapo;
  // State field(s) for kcultura widget.
  double? kculturaValue;
  FormFieldController<double>? kculturaValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Textobs widget.
  FocusNode? textobsFocusNode;
  TextEditingController? textobsTextController;
  String? Function(BuildContext, String?)? textobsTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  IrrigacaoRow? irriga;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textobsFocusNode?.dispose();
    textobsTextController?.dispose();
  }
}

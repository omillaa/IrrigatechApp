import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_lamina_gote_widget.dart' show CLaminaGoteWidget;
import 'package:flutter/material.dart';

class CLaminaGoteModel extends FlutterFlowModel<CLaminaGoteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for planta widget.
  int? plantaValue;
  FormFieldController<int>? plantaValueController;
  // State field(s) for TextDC widget.
  FocusNode? textDCFocusNode;
  TextEditingController? textDCTextController;
  String? Function(BuildContext, String?)? textDCTextControllerValidator;
  // State field(s) for TextER widget.
  FocusNode? textERFocusNode;
  TextEditingController? textERTextController;
  String? Function(BuildContext, String?)? textERTextControllerValidator;
  // Stores action output result for [Backend Call - API (ApiEvapo)] action in Button widget.
  ApiCallResponse? apiResultEvapo;
  // State field(s) for kcultura widget.
  double? kculturaValue;
  FormFieldController<double>? kculturaValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Textobsgote widget.
  FocusNode? textobsgoteFocusNode;
  TextEditingController? textobsgoteTextController;
  String? Function(BuildContext, String?)? textobsgoteTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  IrrigacaoRow? irriga;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textDCFocusNode?.dispose();
    textDCTextController?.dispose();

    textERFocusNode?.dispose();
    textERTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();

    textobsgoteFocusNode?.dispose();
    textobsgoteTextController?.dispose();
  }
}

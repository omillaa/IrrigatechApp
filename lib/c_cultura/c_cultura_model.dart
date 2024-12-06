import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'c_cultura_widget.dart' show CCulturaWidget;
import 'package:flutter/material.dart';

class CCulturaModel extends FlutterFlowModel<CCulturaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for selecionefazenda widget.
  int? selecionefazendaValue;
  FormFieldController<int>? selecionefazendaValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for selecionetapas widget.
  int? selecionetapasValue;
  FormFieldController<int>? selecionetapasValueController;
  // State field(s) for selecioneirriga widget.
  int? selecioneirrigaValue;
  FormFieldController<int>? selecioneirrigaValueController;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Row widget.
  DateTime? selectedDateCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}

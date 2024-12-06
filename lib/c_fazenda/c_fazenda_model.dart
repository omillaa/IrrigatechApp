import '/flutter_flow/flutter_flow_util.dart';
import 'c_fazenda_widget.dart' show CFazendaWidget;
import 'package:flutter/material.dart';

class CFazendaModel extends FlutterFlowModel<CFazendaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomefazenda widget.
  FocusNode? nomefazendaFocusNode;
  TextEditingController? nomefazendaTextController;
  String? Function(BuildContext, String?)? nomefazendaTextControllerValidator;
  // State field(s) for hectares widget.
  FocusNode? hectaresFocusNode;
  TextEditingController? hectaresTextController;
  String? Function(BuildContext, String?)? hectaresTextControllerValidator;
  // State field(s) for Cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomefazendaFocusNode?.dispose();
    nomefazendaTextController?.dispose();

    hectaresFocusNode?.dispose();
    hectaresTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();
  }
}

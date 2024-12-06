import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/calendar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'c_cultura_model.dart';
export 'c_cultura_model.dart';

class CCulturaWidget extends StatefulWidget {
  const CCulturaWidget({
    super.key,
    required this.idfazenda,
  });

  final int? idfazenda;

  @override
  State<CCulturaWidget> createState() => _CCulturaWidgetState();
}

class _CCulturaWidgetState extends State<CCulturaWidget> {
  late CCulturaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CCulturaModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 115.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cadastro de Plantação',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Text(
                        'Registre uma nova área de cultivo',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFFE0E0E0),
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 24.0, 24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Informações da Plantação',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                FutureBuilder<List<FazendasRow>>(
                                  future: FazendasTable().queryRows(
                                    queryFn: (q) => q.eqOrNull(
                                      'id_usuario',
                                      currentUserUid,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<FazendasRow>
                                        selecionefazendaFazendasRowList =
                                        snapshot.data!;

                                    return FlutterFlowDropDown<int>(
                                      controller: _model
                                              .selecionefazendaValueController ??=
                                          FormFieldController<int>(
                                        _model.selecionefazendaValue ??= 1,
                                      ),
                                      options: List<int>.from(
                                          selecionefazendaFazendasRowList
                                              .map((e) => e.idFazenda)
                                              .toList()),
                                      optionLabels:
                                          selecionefazendaFazendasRowList
                                              .map((e) => e.nome)
                                              .withoutNulls
                                              .toList(),
                                      onChanged: (val) => safeSetState(() =>
                                          _model.selecionefazendaValue = val),
                                      width: 294.0,
                                      height: 40.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Selecione..',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                      isOverButton: false,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    );
                                  },
                                ),
                                TextFormField(
                                  controller: _model.textController1,
                                  focusNode: _model.textFieldFocusNode1,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Nome da Plantação',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE0E0E0),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  minLines: 1,
                                  validator: _model.textController1Validator
                                      .asValidator(context),
                                ),
                                TextFormField(
                                  controller: _model.textController2,
                                  focusNode: _model.textFieldFocusNode2,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Tipo da Cultura',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE0E0E0),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  minLines: 1,
                                  validator: _model.textController2Validator
                                      .asValidator(context),
                                ),
                                TextFormField(
                                  controller: _model.textController3,
                                  focusNode: _model.textFieldFocusNode3,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Área (hectares)',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE0E0E0),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  minLines: 1,
                                  keyboardType: TextInputType.number,
                                  validator: _model.textController3Validator
                                      .asValidator(context),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: const Color(0xFFE0E0E0),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Etapas',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        FutureBuilder<List<KcCafeRow>>(
                                          future: KcCafeTable().queryRows(
                                            queryFn: (q) => q,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<KcCafeRow>
                                                selecionetapasKcCafeRowList =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<int>(
                                              controller: _model
                                                      .selecionetapasValueController ??=
                                                  FormFieldController<int>(
                                                _model.selecionetapasValue ??=
                                                    1,
                                              ),
                                              options: List<int>.from(
                                                  selecionetapasKcCafeRowList
                                                      .map((e) => e.id)
                                                      .toList()),
                                              optionLabels:
                                                  selecionetapasKcCafeRowList
                                                      .map((e) => e.estagio)
                                                      .withoutNulls
                                                      .toList(),
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                          .selecionetapasValue =
                                                      val),
                                              width: 268.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Selecione..',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: const Color(0xFFE0E0E0),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Tipo irrigação',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        FutureBuilder<
                                            List<SistemaIrrigacaoRow>>(
                                          future:
                                              SistemaIrrigacaoTable().queryRows(
                                            queryFn: (q) => q,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<SistemaIrrigacaoRow>
                                                selecioneirrigaSistemaIrrigacaoRowList =
                                                snapshot.data!;

                                            return FlutterFlowDropDown<int>(
                                              controller: _model
                                                      .selecioneirrigaValueController ??=
                                                  FormFieldController<int>(
                                                _model.selecioneirrigaValue ??=
                                                    1,
                                              ),
                                              options: List<int>.from(
                                                  selecioneirrigaSistemaIrrigacaoRowList
                                                      .map((e) => e.id)
                                                      .toList()),
                                              optionLabels:
                                                  selecioneirrigaSistemaIrrigacaoRowList
                                                      .map((e) => e.nome)
                                                      .withoutNulls
                                                      .toList(),
                                              onChanged: (val) => safeSetState(
                                                  () => _model
                                                          .selecioneirrigaValue =
                                                      val),
                                              width: 259.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Selecione..',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor: Colors.transparent,
                                              borderWidth: 0.0,
                                              borderRadius: 8.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            );
                                          },
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: const Color(0xFFE0E0E0),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: const Color(0xFFE0E0E0),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Data do Plantio',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Builder(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showAlignedDialog(
                                                    barrierColor:
                                                        Colors.transparent,
                                                    context: context,
                                                    isGlobal: false,
                                                    avoidOverflow: false,
                                                    targetAnchor:
                                                        const AlignmentDirectional(
                                                                0.0, -1.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    followerAnchor:
                                                        const AlignmentDirectional(
                                                                0.0, 1.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    builder: (dialogContext) {
                                                      return Material(
                                                        color:
                                                            Colors.transparent,
                                                        child: GestureDetector(
                                                          onTap: () =>
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus(),
                                                          child: const SizedBox(
                                                            width: 330.0,
                                                            child:
                                                                CalendarWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() => _model
                                                              .selectedDateCopy =
                                                          value));

                                                  safeSetState(() {});
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    3.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            _model.selectedDateCopy !=
                                                                    null
                                                                ? dateTimeFormat(
                                                                    "d/M/y",
                                                                    _model
                                                                        .selectedDateCopy,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )
                                                                : 'Selecione uma data',
                                                            'Selecione uma data',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                lineHeight: 3.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    FlutterFlowIconButton(
                                                      borderRadius: 8.0,
                                                      buttonSize: 40.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      icon: Icon(
                                                        Icons.calendar_month,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () {
                                                        print(
                                                            'IconButton pressed ...');
                                                      },
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 8.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 20.0)),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              await PlantacoesTable().insert({
                                'id_fazenda': _model.selecionefazendaValue,
                                'tipo_cultura': _model.textController2.text,
                                'nome': _model.textController1.text,
                                'data_plantio': supaSerialize<DateTime>(
                                    _model.selectedDateCopy),
                                'area': double.tryParse(
                                    _model.textController3.text),
                                'status': _model.selecionetapasValue,
                                'id_tipo_sistema': _model.selecioneirrigaValue,
                              });
                            },
                            text: 'Salvar',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 0.48,
                              height: 56.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(28.0),
                            ),
                          ),
                        ],
                      ),
                    ].divide(const SizedBox(height: 24.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

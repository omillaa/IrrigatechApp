import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'fazendas_model.dart';
export 'fazendas_model.dart';

class FazendasWidget extends StatefulWidget {
  const FazendasWidget({super.key});

  @override
  State<FazendasWidget> createState() => _FazendasWidgetState();
}

class _FazendasWidgetState extends State<FazendasWidget> {
  late FazendasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FazendasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FazendasRow>>(
      future: FazendasTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'id_usuario',
          currentUserUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<FazendasRow> fazendasFazendasRowList = snapshot.data!;

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
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 157.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gerenciamento de Fazendas',
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'Controle e monitore suas propriedades rurais',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFFE0E0E0),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    32.0, 8.0, 32.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final listfazenda =
                                        fazendasFazendasRowList.toList();

                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: listfazenda.length,
                                      separatorBuilder: (_, __) =>
                                          const SizedBox(height: 12.0),
                                      itemBuilder: (context, listfazendaIndex) {
                                        final listfazendaItem =
                                            listfazenda[listfazendaIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 5.0, 5.0, 5.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'Inf_fazendas',
                                                queryParameters: {
                                                  'idfazenda': serializeParam(
                                                    listfazendaItem.idFazenda,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xADF1F4F8),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listfazendaItem
                                                                      .nome,
                                                                  'null',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listfazendaItem
                                                                      .localizacao,
                                                                  'null',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 60.0,
                                                            height: 60.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xCEF1F4F8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                            ),
                                                            child: Icon(
                                                              Icons.eco,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              size: 30.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Tipo de Solo',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              Text(
                                                                listfazendaItem
                                                                    .tipoSolo!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                'Recurso Hídrico',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              Text(
                                                                listfazendaItem
                                                                    .recursohidrico!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 16.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('C_Fazenda');
                                  },
                                  text: 'Adicionar Fazenda',
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.5,
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
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderRadius: BorderRadius.circular(28.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

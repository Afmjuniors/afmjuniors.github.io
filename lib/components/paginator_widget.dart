import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'paginator_model.dart';
export 'paginator_model.dart';

class PaginatorWidget extends StatefulWidget {
  const PaginatorWidget({
    super.key,
    int? actualPage,
    int? lastPage,
    this.filter,
    this.cnpjs,
  })  : this.actualPage = actualPage ?? 1,
        this.lastPage = lastPage ?? 1;

  final int actualPage;
  final int lastPage;
  final SearchDTOStruct? filter;
  final PaginacaoStruct? cnpjs;

  @override
  State<PaginatorWidget> createState() => _PaginatorWidgetState();
}

class _PaginatorWidgetState extends State<PaginatorWidget> {
  late PaginatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginatorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Wrap(
      spacing: 2.0,
      runSpacing: 0.0,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.start,
      verticalDirection: VerticalDirection.down,
      clipBehavior: Clip.none,
      children: [
        Wrap(
          spacing: 2.0,
          runSpacing: 0.0,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: [
            if (FFAppState().actualPage != 1)
              FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (widget!.filter?.hasFilter() == true) {
                    _model.updateSerchDTOM0 = await actions.updatePageState(
                      widget!.filter!,
                      1,
                    );
                    _shouldSetState = true;
                    _model.newActualPageCopyCopy2 =
                        await actions.newCustomAction2(
                      1,
                      0,
                    );
                    _shouldSetState = true;
                    _model.actualPage = 1;
                    safeSetState(() {});
                    _model.apiResultlbSearchM0 =
                        await CnpjGroup.searchCNPJCall.call(
                      bearer: currentAuthenticationToken,
                      filterJson: _model.updateSerchDTOM0?.toMap(),
                    );

                    _shouldSetState = true;
                    if ((_model.apiResultlbSearchM0?.succeeded ?? true)) {
                      _model.actualPage = 1;
                      safeSetState(() {});
                      _model.cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearchM0?.jsonBody ?? ''));
                      safeSetState(() {});
                      FFAppState().actualPage = 1;
                      FFAppState().cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearchM0?.jsonBody ?? ''))!;
                      safeSetState(() {});
                    } else {
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }
                  }
                  if (_shouldSetState) safeSetState(() {});
                },
                text: '1',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).alternate,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            if ((_model.actualPage > 4) &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                ))
              Text(
                '...',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            if ((FFAppState().actualPage > 3) &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                ))
              FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (widget!.filter?.hasFilter() == true) {
                    _model.updateSerchDTOM2 = await actions.updatePageState(
                      widget!.filter!,
                      FFAppState().actualPage - 2,
                    );
                    _shouldSetState = true;
                    _model.newActualPageCopyCopy =
                        await actions.newCustomAction2(
                      FFAppState().actualPage,
                      -2,
                    );
                    _shouldSetState = true;
                    _model.actualPage = FFAppState().actualPage - 2;
                    safeSetState(() {});
                    _model.apiResultlbSearchM2 =
                        await CnpjGroup.searchCNPJCall.call(
                      bearer: currentAuthenticationToken,
                      filterJson: _model.updateSerchDTOM2?.toMap(),
                    );

                    _shouldSetState = true;
                    if ((_model.apiResultlbSearchM2?.succeeded ?? true)) {
                      _model.actualPage = FFAppState().actualPage - 2;
                      safeSetState(() {});
                      _model.cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearchM2?.jsonBody ?? ''));
                      safeSetState(() {});
                      FFAppState().actualPage = FFAppState().actualPage - 2;
                      FFAppState().cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearchM2?.jsonBody ?? ''))!;
                      safeSetState(() {});
                    } else {
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }
                  }
                  if (_shouldSetState) safeSetState(() {});
                },
                text: (FFAppState().actualPage - 2).toString(),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).alternate,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            if (((FFAppState().actualPage == 3) ||
                    (FFAppState().actualPage == 4)) &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                ))
              FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (widget!.cnpjs?.hasEntities() == true) {
                    _model.apiUpdateM1Search = await actions.updatePageState(
                      widget!.filter!,
                      FFAppState().actualPage - 1,
                    );
                    _shouldSetState = true;
                    _model.newActualPageCopy3 = await actions.newCustomAction2(
                      FFAppState().actualPage,
                      -1,
                    );
                    _shouldSetState = true;
                    _model.actualPage = widget!.actualPage - 1;
                    safeSetState(() {});
                    _model.apiResultlbSearchM1 =
                        await CnpjGroup.searchCNPJCall.call(
                      bearer: currentAuthenticationToken,
                      filterJson: _model.apiUpdateM1Search?.toMap(),
                    );

                    _shouldSetState = true;
                    if ((_model.apiResultlbSearchM1?.succeeded ?? true)) {
                      _model.actualPage = widget!.actualPage - 1;
                      safeSetState(() {});
                      _model.cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearchM1?.jsonBody ?? ''));
                      safeSetState(() {});
                      FFAppState().actualPage = FFAppState().actualPage - 1;
                      FFAppState().cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearchM1?.jsonBody ?? ''))!;
                      safeSetState(() {});
                    } else {
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }
                  }
                  if (_shouldSetState) safeSetState(() {});
                },
                text: (FFAppState().actualPage - 1).toString(),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).alternate,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
          ],
        ),
        FFButtonWidget(
          onPressed: true
              ? null
              : () {
                  print('Button pressed ...');
                },
          text: FFAppState().actualPage.toString(),
          options: FFButtonOptions(
            height: 40.0,
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).primary,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: Colors.white,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily),
                ),
            elevation: 0.0,
            borderRadius: BorderRadius.circular(8.0),
            disabledColor: FlutterFlowTheme.of(context).primary,
            disabledTextColor: Colors.white,
          ),
        ),
        Wrap(
          spacing: 2.0,
          runSpacing: 0.0,
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.end,
          direction: Axis.horizontal,
          runAlignment: WrapAlignment.start,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.none,
          children: [
            if (((FFAppState().actualPage < widget!.lastPage) &&
                    (widget!.lastPage != (FFAppState().actualPage + 1)) &&
                    !(FFAppState().actualPage - 1 > 0)) &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                ))
              FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (widget!.cnpjs?.hasEntities() == true) {
                    _model.apiUpdate1Search = await actions.updatePageState(
                      widget!.filter!,
                      FFAppState().actualPage + 1,
                    );
                    _shouldSetState = true;
                    _model.newActualPage = await actions.newCustomAction2(
                      FFAppState().actualPage,
                      1,
                    );
                    _shouldSetState = true;
                    _model.actualPage = widget!.actualPage + 1;
                    safeSetState(() {});
                    _model.apiResultlbSearch1 =
                        await CnpjGroup.searchCNPJCall.call(
                      bearer: currentAuthenticationToken,
                      filterJson: _model.apiUpdate1Search?.toMap(),
                    );

                    _shouldSetState = true;
                    if ((_model.apiResultlbSearch1?.succeeded ?? true)) {
                      _model.actualPage = widget!.actualPage + 1;
                      safeSetState(() {});
                      _model.cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearch1?.jsonBody ?? ''));
                      safeSetState(() {});
                      FFAppState().actualPage = FFAppState().actualPage + 1;
                      FFAppState().cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearch1?.jsonBody ?? ''))!;
                      safeSetState(() {});
                    } else {
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }
                  }
                  if (_shouldSetState) safeSetState(() {});
                },
                text: (FFAppState().actualPage + 1).toString(),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).alternate,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            if (((FFAppState().actualPage == (widget!.lastPage - 2)) &&
                    (FFAppState().actualPage ==
                        (FFAppState().actualPage + 2)) &&
                    !(FFAppState().actualPage - 2 > 0)) &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                ))
              FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (widget!.filter?.hasFilter() == true) {
                    _model.updateSerchDTO2 = await actions.updatePageState(
                      widget!.filter!,
                      FFAppState().actualPage + 1,
                    );
                    _shouldSetState = true;
                    _model.newActualPageCopy = await actions.newCustomAction2(
                      FFAppState().actualPage,
                      2,
                    );
                    _shouldSetState = true;
                    _model.actualPage = FFAppState().actualPage + 1;
                    safeSetState(() {});
                    _model.apiResultlbSearch2 =
                        await CnpjGroup.searchCNPJCall.call(
                      bearer: currentAuthenticationToken,
                      filterJson: _model.updateSerchDTO2?.toMap(),
                    );

                    _shouldSetState = true;
                    if ((_model.apiResultlbSearch2?.succeeded ?? true)) {
                      _model.actualPage = FFAppState().actualPage + 1;
                      safeSetState(() {});
                      _model.cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearch2?.jsonBody ?? ''));
                      safeSetState(() {});
                      FFAppState().actualPage = FFAppState().actualPage + 1;
                      FFAppState().cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearch2?.jsonBody ?? ''))!;
                      safeSetState(() {});
                    } else {
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }
                  }
                  if (_shouldSetState) safeSetState(() {});
                },
                text: (FFAppState().actualPage + 2).toString(),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).alternate,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            if ((FFAppState().actualPage < (widget!.lastPage - 2)) &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                ))
              Text(
                '...',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            if ((widget!.lastPage != FFAppState().actualPage) &&
                (widget!.lastPage != 0))
              FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (widget!.filter?.hasFilter() == true) {
                    _model.apiUpdatefinal = await actions.updatePageState(
                      widget!.filter!,
                      widget!.lastPage,
                    );
                    _shouldSetState = true;
                    _model.newActualPageCopy2 = await actions.newCustomAction2(
                      widget!.actualPage,
                      1,
                    );
                    _shouldSetState = true;
                    _model.actualPage = widget!.lastPage;
                    safeSetState(() {});
                    _model.apiResultlbSearchFinal =
                        await CnpjGroup.searchCNPJCall.call(
                      bearer: currentAuthenticationToken,
                      filterJson: _model.apiUpdatefinal?.toMap(),
                    );

                    _shouldSetState = true;
                    if ((_model.apiResultlbSearchFinal?.succeeded ?? true)) {
                      _model.actualPage = widget!.lastPage;
                      safeSetState(() {});
                      _model.cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearchFinal?.jsonBody ?? ''));
                      safeSetState(() {});
                      FFAppState().actualPage = _model.actualPage;
                      FFAppState().cnpjs = PaginacaoStruct.maybeFromMap(
                          (_model.apiResultlbSearchFinal?.jsonBody ?? ''))!;
                      safeSetState(() {});
                    } else {
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }
                  }
                  if (_shouldSetState) safeSetState(() {});
                },
                text: widget!.lastPage.toString(),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).alternate,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

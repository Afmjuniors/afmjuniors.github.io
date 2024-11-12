import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'paginator_widget.dart' show PaginatorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaginatorModel extends FlutterFlowModel<PaginatorWidget> {
  ///  Local state fields for this component.

  int actualPage = 1;

  int lastPage = 1;

  PaginacaoStruct? cnpjs;
  void updateCnpjsStruct(Function(PaginacaoStruct) updateFn) {
    updateFn(cnpjs ??= PaginacaoStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - updatePageState] action in Button widget.
  SearchDTOStruct? updateSerchDTOM0;
  // Stores action output result for [Custom Action - newCustomAction2] action in Button widget.
  int? newActualPageCopyCopy2;
  // Stores action output result for [Backend Call - API (SearchCNPJ)] action in Button widget.
  ApiCallResponse? apiResultlbSearchM0;
  // Stores action output result for [Custom Action - updatePageState] action in Button widget.
  SearchDTOStruct? updateSerchDTOM2;
  // Stores action output result for [Custom Action - newCustomAction2] action in Button widget.
  int? newActualPageCopyCopy;
  // Stores action output result for [Backend Call - API (SearchCNPJ)] action in Button widget.
  ApiCallResponse? apiResultlbSearchM2;
  // Stores action output result for [Custom Action - updatePageState] action in Button widget.
  SearchDTOStruct? apiUpdateM1Search;
  // Stores action output result for [Custom Action - newCustomAction2] action in Button widget.
  int? newActualPageCopy3;
  // Stores action output result for [Backend Call - API (SearchCNPJ)] action in Button widget.
  ApiCallResponse? apiResultlbSearchM1;
  // Stores action output result for [Custom Action - updatePageState] action in Button widget.
  SearchDTOStruct? apiUpdate1Search;
  // Stores action output result for [Custom Action - newCustomAction2] action in Button widget.
  int? newActualPage;
  // Stores action output result for [Backend Call - API (SearchCNPJ)] action in Button widget.
  ApiCallResponse? apiResultlbSearch1;
  // Stores action output result for [Custom Action - updatePageState] action in Button widget.
  SearchDTOStruct? updateSerchDTO2;
  // Stores action output result for [Custom Action - newCustomAction2] action in Button widget.
  int? newActualPageCopy;
  // Stores action output result for [Backend Call - API (SearchCNPJ)] action in Button widget.
  ApiCallResponse? apiResultlbSearch2;
  // Stores action output result for [Custom Action - updatePageState] action in Button widget.
  SearchDTOStruct? apiUpdatefinal;
  // Stores action output result for [Custom Action - newCustomAction2] action in Button widget.
  int? newActualPageCopy2;
  // Stores action output result for [Backend Call - API (SearchCNPJ)] action in Button widget.
  ApiCallResponse? apiResultlbSearchFinal;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

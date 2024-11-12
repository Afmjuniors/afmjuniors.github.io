import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/date_picker_filed_text_widget.dart';
import '/components/paginator_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<String> cnae = [];
  void addToCnae(String item) => cnae.add(item);
  void removeFromCnae(String item) => cnae.remove(item);
  void removeAtIndexFromCnae(int index) => cnae.removeAt(index);
  void insertAtIndexInCnae(int index, String item) => cnae.insert(index, item);
  void updateCnaeAtIndex(int index, Function(String) updateFn) =>
      cnae[index] = updateFn(cnae[index]);

  List<String> natureza = [];
  void addToNatureza(String item) => natureza.add(item);
  void removeFromNatureza(String item) => natureza.remove(item);
  void removeAtIndexFromNatureza(int index) => natureza.removeAt(index);
  void insertAtIndexInNatureza(int index, String item) =>
      natureza.insert(index, item);
  void updateNaturezaAtIndex(int index, Function(String) updateFn) =>
      natureza[index] = updateFn(natureza[index]);

  List<MunicipiosStruct> municipios = [];
  void addToMunicipios(MunicipiosStruct item) => municipios.add(item);
  void removeFromMunicipios(MunicipiosStruct item) => municipios.remove(item);
  void removeAtIndexFromMunicipios(int index) => municipios.removeAt(index);
  void insertAtIndexInMunicipios(int index, MunicipiosStruct item) =>
      municipios.insert(index, item);
  void updateMunicipiosAtIndex(
          int index, Function(MunicipiosStruct) updateFn) =>
      municipios[index] = updateFn(municipios[index]);

  List<String> selectedEstados = [];
  void addToSelectedEstados(String item) => selectedEstados.add(item);
  void removeFromSelectedEstados(String item) => selectedEstados.remove(item);
  void removeAtIndexFromSelectedEstados(int index) =>
      selectedEstados.removeAt(index);
  void insertAtIndexInSelectedEstados(int index, String item) =>
      selectedEstados.insert(index, item);
  void updateSelectedEstadosAtIndex(int index, Function(String) updateFn) =>
      selectedEstados[index] = updateFn(selectedEstados[index]);

  List<EstadosStruct> estados = [];
  void addToEstados(EstadosStruct item) => estados.add(item);
  void removeFromEstados(EstadosStruct item) => estados.remove(item);
  void removeAtIndexFromEstados(int index) => estados.removeAt(index);
  void insertAtIndexInEstados(int index, EstadosStruct item) =>
      estados.insert(index, item);
  void updateEstadosAtIndex(int index, Function(EstadosStruct) updateFn) =>
      estados[index] = updateFn(estados[index]);

  List<MunicipioSelecionadoStruct> municipiosSelecionados = [];
  void addToMunicipiosSelecionados(MunicipioSelecionadoStruct item) =>
      municipiosSelecionados.add(item);
  void removeFromMunicipiosSelecionados(MunicipioSelecionadoStruct item) =>
      municipiosSelecionados.remove(item);
  void removeAtIndexFromMunicipiosSelecionados(int index) =>
      municipiosSelecionados.removeAt(index);
  void insertAtIndexInMunicipiosSelecionados(
          int index, MunicipioSelecionadoStruct item) =>
      municipiosSelecionados.insert(index, item);
  void updateMunicipiosSelecionadosAtIndex(
          int index, Function(MunicipioSelecionadoStruct) updateFn) =>
      municipiosSelecionados[index] = updateFn(municipiosSelecionados[index]);

  PaginacaoStruct? pageCNPJ;
  void updatePageCNPJStruct(Function(PaginacaoStruct) updateFn) {
    updateFn(pageCNPJ ??= PaginacaoStruct());
  }

  bool isOpen = false;

  SearchDTOStruct? filterDTO;
  void updateFilterDTOStruct(Function(SearchDTOStruct) updateFn) {
    updateFn(filterDTO ??= SearchDTOStruct());
  }

  int? actualPage;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ListEstados)] action in HomePage widget.
  ApiCallResponse? apiResultixs;
  // State field(s) for TextField-Nome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  // State field(s) for DropDown-Situacao widget.
  String? dropDownSituacaoValue;
  FormFieldController<String>? dropDownSituacaoValueController;
  // State field(s) for TextField-Natureza widget.
  final textFieldNaturezaKey = GlobalKey();
  FocusNode? textFieldNaturezaFocusNode;
  TextEditingController? textFieldNaturezaTextController;
  String? textFieldNaturezaSelectedOption;
  String? Function(BuildContext, String?)?
      textFieldNaturezaTextControllerValidator;
  // Stores action output result for [Backend Call - API (ListNaturezaJuridicaQuery)] action in TextField-Natureza widget.
  ApiCallResponse? natureQueryResult;
  // State field(s) for TextField-CNAE widget.
  final textFieldCNAEKey = GlobalKey();
  FocusNode? textFieldCNAEFocusNode;
  TextEditingController? textFieldCNAETextController;
  String? textFieldCNAESelectedOption;
  String? Function(BuildContext, String?)? textFieldCNAETextControllerValidator;
  // Stores action output result for [Backend Call - API (ListCnaeQuery)] action in TextField-CNAE widget.
  ApiCallResponse? cNAEResultQuery;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // Model for DatePickerFiledText component.
  late DatePickerFiledTextModel datePickerFiledTextModel1;
  // Model for DatePickerFiledText component.
  late DatePickerFiledTextModel datePickerFiledTextModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for DropDown-UF widget.
  String? dropDownUFValue;
  FormFieldController<String>? dropDownUFValueController;
  // Stores action output result for [Backend Call - API (ListCidades)] action in DropDown-UF widget.
  ApiCallResponse? municipiosApiResult;
  // State field(s) for DropDown-municipios widget.
  List<int>? dropDownMunicipiosValue;
  FormFieldController<List<int>>? dropDownMunicipiosValueController;
  // Stores action output result for [Backend Call - API (ListCidades)] action in DropDown-municipios widget.
  ApiCallResponse? municipioResult;
  // Stores action output result for [Custom Action - newCustomAction] action in IconButton widget.
  List<MunicipioSelecionadoStruct>? resultMunicipios;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController7;
  final textFieldMask4 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController8;
  final textFieldMask5 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for Switch widget.
  bool? switchValue4;
  // State field(s) for Switch widget.
  bool? switchValue5;
  // State field(s) for Switch widget.
  bool? switchValue6;
  // State field(s) for Switch widget.
  bool? switchValue7;
  // State field(s) for Switch widget.
  bool? switchValue8;
  // State field(s) for Switch widget.
  bool? switchValue9;
  // Stores action output result for [Custom Action - createFilterDTO] action in Button widget.
  SearchDTOStruct? filterDTORequest;
  // Stores action output result for [Backend Call - API (SearchCNPJ)] action in Button widget.
  ApiCallResponse? apiSearchCpjResult;
  // Stores action output result for [Custom Action - createFilterDTO] action in Button widget.
  SearchDTOStruct? filterDTORequestReport;
  // Stores action output result for [Backend Call - API (Export Data  CSV)] action in Button widget.
  ApiCallResponse? apiSearchCpjResultReport;
  // Stores action output result for [Custom Action - downloadFile] action in Button widget.
  String? downloaded;
  // Model for Paginator component.
  late PaginatorModel paginatorModel;

  @override
  void initState(BuildContext context) {
    datePickerFiledTextModel1 =
        createModel(context, () => DatePickerFiledTextModel());
    datePickerFiledTextModel2 =
        createModel(context, () => DatePickerFiledTextModel());
    paginatorModel = createModel(context, () => PaginatorModel());
  }

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldNaturezaFocusNode?.dispose();

    textFieldCNAEFocusNode?.dispose();

    datePickerFiledTextModel1.dispose();
    datePickerFiledTextModel2.dispose();
    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();

    textFieldFocusNode4?.dispose();
    textController7?.dispose();

    textFieldFocusNode5?.dispose();
    textController8?.dispose();

    paginatorModel.dispose();
  }

  /// Action blocks.
  Future gg(BuildContext context) async {
    await Future.wait([]);
  }
}

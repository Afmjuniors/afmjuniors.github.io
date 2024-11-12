import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'date_picker_filed_text_widget.dart' show DatePickerFiledTextWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class DatePickerFiledTextModel
    extends FlutterFlowModel<DatePickerFiledTextWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField-apartir-data widget.
  FocusNode? textFieldApartirDataFocusNode;
  TextEditingController? textFieldApartirDataTextController;
  final textFieldApartirDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      textFieldApartirDataTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldApartirDataFocusNode?.dispose();
    textFieldApartirDataTextController?.dispose();
  }
}

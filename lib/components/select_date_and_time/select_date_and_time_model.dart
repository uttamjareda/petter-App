import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'select_date_and_time_widget.dart' show SelectDateAndTimeWidget;
import 'package:flutter/material.dart';

class SelectDateAndTimeModel extends FlutterFlowModel<SelectDateAndTimeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for dateDropDown widget.
  String? dateDropDownValue;
  FormFieldController<String>? dateDropDownValueController;
  // State field(s) for timeSlotDropDown widget.
  String? timeSlotDropDownValue;
  FormFieldController<String>? timeSlotDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

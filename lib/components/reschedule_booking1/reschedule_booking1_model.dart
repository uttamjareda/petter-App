import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'reschedule_booking1_widget.dart' show RescheduleBooking1Widget;
import 'package:flutter/material.dart';

class RescheduleBooking1Model
    extends FlutterFlowModel<RescheduleBooking1Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}

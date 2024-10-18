import '/flutter_flow/flutter_flow_util.dart';
import 'phone_number_login_widget.dart' show PhoneNumberLoginWidget;
import 'package:flutter/material.dart';

class PhoneNumberLoginModel extends FlutterFlowModel<PhoneNumberLoginWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PhoneNumberField widget.
  FocusNode? phoneNumberFieldFocusNode;
  TextEditingController? phoneNumberFieldTextController;
  String? Function(BuildContext, String?)?
      phoneNumberFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneNumberFieldFocusNode?.dispose();
    phoneNumberFieldTextController?.dispose();
  }
}

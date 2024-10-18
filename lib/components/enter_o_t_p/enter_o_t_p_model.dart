import '/flutter_flow/flutter_flow_util.dart';
import 'enter_o_t_p_widget.dart' show EnterOTPWidget;
import 'package:flutter/material.dart';

class EnterOTPModel extends FlutterFlowModel<EnterOTPWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}

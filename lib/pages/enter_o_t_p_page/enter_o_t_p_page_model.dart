import '/flutter_flow/flutter_flow_util.dart';
import 'enter_o_t_p_page_widget.dart' show EnterOTPPageWidget;
import 'package:flutter/material.dart';

class EnterOTPPageModel extends FlutterFlowModel<EnterOTPPageWidget> {
  ///  State fields for stateful widgets in this page.

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

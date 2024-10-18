import '/flutter_flow/flutter_flow_util.dart';
import 'login_signup_page_widget.dart' show LoginSignupPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginSignupPageModel extends FlutterFlowModel<LoginSignupPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for PhoneNumberField widget.
  FocusNode? phoneNumberFieldFocusNode;
  TextEditingController? phoneNumberFieldTextController;
  final phoneNumberFieldMask = MaskTextInputFormatter(mask: '+91 ##### #####');
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

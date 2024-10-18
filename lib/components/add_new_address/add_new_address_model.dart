import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_new_address_widget.dart' show AddNewAddressWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddNewAddressModel extends FlutterFlowModel<AddNewAddressWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for addressLine1Field widget.
  FocusNode? addressLine1FieldFocusNode;
  TextEditingController? addressLine1FieldTextController;
  String? Function(BuildContext, String?)?
      addressLine1FieldTextControllerValidator;
  // State field(s) for addressLine2Field widget.
  FocusNode? addressLine2FieldFocusNode;
  TextEditingController? addressLine2FieldTextController;
  String? Function(BuildContext, String?)?
      addressLine2FieldTextControllerValidator;
  // State field(s) for cityField widget.
  FocusNode? cityFieldFocusNode;
  TextEditingController? cityFieldTextController;
  String? Function(BuildContext, String?)? cityFieldTextControllerValidator;
  // State field(s) for pincodeField widget.
  FocusNode? pincodeFieldFocusNode;
  TextEditingController? pincodeFieldTextController;
  String? Function(BuildContext, String?)? pincodeFieldTextControllerValidator;
  // State field(s) for stateField widget.
  FocusNode? stateFieldFocusNode;
  TextEditingController? stateFieldTextController;
  String? Function(BuildContext, String?)? stateFieldTextControllerValidator;
  // State field(s) for countryField widget.
  FocusNode? countryFieldFocusNode;
  TextEditingController? countryFieldTextController;
  String? Function(BuildContext, String?)? countryFieldTextControllerValidator;
  // State field(s) for phoneNumberField widget.
  FocusNode? phoneNumberFieldFocusNode;
  TextEditingController? phoneNumberFieldTextController;
  final phoneNumberFieldMask = MaskTextInputFormatter(mask: '+91 ##### #####');
  String? Function(BuildContext, String?)?
      phoneNumberFieldTextControllerValidator;
  // State field(s) for addressTypeDropDown widget.
  AddressType? addressTypeDropDownValue;
  FormFieldController<AddressType>? addressTypeDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    addressLine1FieldFocusNode?.dispose();
    addressLine1FieldTextController?.dispose();

    addressLine2FieldFocusNode?.dispose();
    addressLine2FieldTextController?.dispose();

    cityFieldFocusNode?.dispose();
    cityFieldTextController?.dispose();

    pincodeFieldFocusNode?.dispose();
    pincodeFieldTextController?.dispose();

    stateFieldFocusNode?.dispose();
    stateFieldTextController?.dispose();

    countryFieldFocusNode?.dispose();
    countryFieldTextController?.dispose();

    phoneNumberFieldFocusNode?.dispose();
    phoneNumberFieldTextController?.dispose();
  }
}

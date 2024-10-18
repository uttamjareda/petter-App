import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_pet_widget.dart' show EditPetWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditPetModel extends FlutterFlowModel<EditPetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for petNameField widget.
  FocusNode? petNameFieldFocusNode;
  TextEditingController? petNameFieldTextController;
  String? Function(BuildContext, String?)? petNameFieldTextControllerValidator;
  // State field(s) for petBreedField widget.
  FocusNode? petBreedFieldFocusNode;
  TextEditingController? petBreedFieldTextController;
  String? Function(BuildContext, String?)? petBreedFieldTextControllerValidator;
  // State field(s) for dateOfBirthField widget.
  FocusNode? dateOfBirthFieldFocusNode;
  TextEditingController? dateOfBirthFieldTextController;
  final dateOfBirthFieldMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      dateOfBirthFieldTextControllerValidator;
  // State field(s) for petTypeDropDown widget.
  PetType? petTypeDropDownValue;
  FormFieldController<PetType>? petTypeDropDownValueController;
  // State field(s) for petGenderDropDown widget.
  Gender? petGenderDropDownValue;
  FormFieldController<Gender>? petGenderDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    petNameFieldFocusNode?.dispose();
    petNameFieldTextController?.dispose();

    petBreedFieldFocusNode?.dispose();
    petBreedFieldTextController?.dispose();

    dateOfBirthFieldFocusNode?.dispose();
    dateOfBirthFieldTextController?.dispose();
  }
}

import '/components/header_home/header_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pet_profile_copy_widget.dart' show PetProfileCopyWidget;
import 'package:flutter/material.dart';

class PetProfileCopyModel extends FlutterFlowModel<PetProfileCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header_Home component.
  late HeaderHomeModel headerHomeModel;

  @override
  void initState(BuildContext context) {
    headerHomeModel = createModel(context, () => HeaderHomeModel());
  }

  @override
  void dispose() {
    headerHomeModel.dispose();
  }
}

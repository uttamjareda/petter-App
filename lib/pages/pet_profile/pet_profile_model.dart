import '/components/header_home/header_home_widget.dart';
import '/components/pet_profile_menus_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pet_profile_widget.dart' show PetProfileWidget;
import 'package:flutter/material.dart';

class PetProfileModel extends FlutterFlowModel<PetProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header_Home component.
  late HeaderHomeModel headerHomeModel;
  // Model for petProfileMenus component.
  late PetProfileMenusModel petProfileMenusModel;

  @override
  void initState(BuildContext context) {
    headerHomeModel = createModel(context, () => HeaderHomeModel());
    petProfileMenusModel = createModel(context, () => PetProfileMenusModel());
  }

  @override
  void dispose() {
    headerHomeModel.dispose();
    petProfileMenusModel.dispose();
  }
}

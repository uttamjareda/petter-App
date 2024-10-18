import '/components/header_home/header_home_widget.dart';
import '/components/home_vet_services/home_vet_services_widget.dart';
import '/components/vaccinations/vaccinations_widget.dart';
import '/components/virtual_vet_services/virtual_vet_services_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header_Home component.
  late HeaderHomeModel headerHomeModel;
  // Model for HomeVetServices component.
  late HomeVetServicesModel homeVetServicesModel;
  // Model for Vaccinations component.
  late VaccinationsModel vaccinationsModel;
  // Model for VirtualVetServices component.
  late VirtualVetServicesModel virtualVetServicesModel;

  @override
  void initState(BuildContext context) {
    headerHomeModel = createModel(context, () => HeaderHomeModel());
    homeVetServicesModel = createModel(context, () => HomeVetServicesModel());
    vaccinationsModel = createModel(context, () => VaccinationsModel());
    virtualVetServicesModel =
        createModel(context, () => VirtualVetServicesModel());
  }

  @override
  void dispose() {
    headerHomeModel.dispose();
    homeVetServicesModel.dispose();
    vaccinationsModel.dispose();
    virtualVetServicesModel.dispose();
  }
}

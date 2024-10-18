import '/components/header_home/header_home_widget.dart';
import '/components/pet_profile_menus_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pet_profile_model.dart';
export 'pet_profile_model.dart';

class PetProfileWidget extends StatefulWidget {
  const PetProfileWidget({super.key});

  @override
  State<PetProfileWidget> createState() => _PetProfileWidgetState();
}

class _PetProfileWidgetState extends State<PetProfileWidget> {
  late PetProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PetProfileModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.headerHomeModel,
                updateCallback: () => safeSetState(() {}),
                child: const HeaderHomeWidget(),
              ),
              Expanded(
                child: wrapWithModel(
                  model: _model.petProfileMenusModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const PetProfileMenusWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

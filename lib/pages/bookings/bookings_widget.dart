import '/components/all_bookings_copy/all_bookings_copy_widget.dart';
import '/components/header_home/header_home_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bookings_model.dart';
export 'bookings_model.dart';

class BookingsWidget extends StatefulWidget {
  const BookingsWidget({super.key});

  @override
  State<BookingsWidget> createState() => _BookingsWidgetState();
}

class _BookingsWidgetState extends State<BookingsWidget> {
  late BookingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingsModel());
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
                  model: _model.allBookingsCopyModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const AllBookingsCopyWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import '/components/all_bookings_copy/all_bookings_copy_widget.dart';
import '/components/header_home/header_home_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bookings_widget.dart' show BookingsWidget;
import 'package:flutter/material.dart';

class BookingsModel extends FlutterFlowModel<BookingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header_Home component.
  late HeaderHomeModel headerHomeModel;
  // Model for allBookingsCopy component.
  late AllBookingsCopyModel allBookingsCopyModel;

  @override
  void initState(BuildContext context) {
    headerHomeModel = createModel(context, () => HeaderHomeModel());
    allBookingsCopyModel = createModel(context, () => AllBookingsCopyModel());
  }

  @override
  void dispose() {
    headerHomeModel.dispose();
    allBookingsCopyModel.dispose();
  }
}

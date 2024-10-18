import '/components/booking_details_comp1/booking_details_comp1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'booking_details_success_widget.dart' show BookingDetailsSuccessWidget;
import 'package:flutter/material.dart';

class BookingDetailsSuccessModel
    extends FlutterFlowModel<BookingDetailsSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for bookingDetailsComp1 component.
  late BookingDetailsComp1Model bookingDetailsComp1Model;

  @override
  void initState(BuildContext context) {
    bookingDetailsComp1Model =
        createModel(context, () => BookingDetailsComp1Model());
  }

  @override
  void dispose() {
    bookingDetailsComp1Model.dispose();
  }
}

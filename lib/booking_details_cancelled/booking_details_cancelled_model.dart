import '/components/booking_details_comp2/booking_details_comp2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'booking_details_cancelled_widget.dart'
    show BookingDetailsCancelledWidget;
import 'package:flutter/material.dart';

class BookingDetailsCancelledModel
    extends FlutterFlowModel<BookingDetailsCancelledWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for bookingDetailsComp2 component.
  late BookingDetailsComp2Model bookingDetailsComp2Model;

  @override
  void initState(BuildContext context) {
    bookingDetailsComp2Model =
        createModel(context, () => BookingDetailsComp2Model());
  }

  @override
  void dispose() {
    bookingDetailsComp2Model.dispose();
  }
}

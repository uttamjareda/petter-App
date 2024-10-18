import '/components/cancellation_policy_comp/cancellation_policy_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'booking_details_widget.dart' show BookingDetailsWidget;
import 'package:flutter/material.dart';

class BookingDetailsModel extends FlutterFlowModel<BookingDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cancellationPolicyComp component.
  late CancellationPolicyCompModel cancellationPolicyCompModel;

  @override
  void initState(BuildContext context) {
    cancellationPolicyCompModel =
        createModel(context, () => CancellationPolicyCompModel());
  }

  @override
  void dispose() {
    cancellationPolicyCompModel.dispose();
  }
}

import '/components/checkout_details/checkout_details_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkout_page_widget.dart' show CheckoutPageWidget;
import 'package:flutter/material.dart';

class CheckoutPageModel extends FlutterFlowModel<CheckoutPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for checkoutDetails component.
  late CheckoutDetailsModel checkoutDetailsModel;

  @override
  void initState(BuildContext context) {
    checkoutDetailsModel = createModel(context, () => CheckoutDetailsModel());
  }

  @override
  void dispose() {
    checkoutDetailsModel.dispose();
  }
}

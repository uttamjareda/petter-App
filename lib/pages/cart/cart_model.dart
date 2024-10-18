import '/components/cart_details/cart_details_widget.dart';
import '/components/cart_header/cart_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cartHeader component.
  late CartHeaderModel cartHeaderModel;
  // Model for cartDetails component.
  late CartDetailsModel cartDetailsModel;

  @override
  void initState(BuildContext context) {
    cartHeaderModel = createModel(context, () => CartHeaderModel());
    cartDetailsModel = createModel(context, () => CartDetailsModel());
  }

  @override
  void dispose() {
    cartHeaderModel.dispose();
    cartDetailsModel.dispose();
  }
}

import '/components/cart_header/cart_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'empty_cart_widget.dart' show EmptyCartWidget;
import 'package:flutter/material.dart';

class EmptyCartModel extends FlutterFlowModel<EmptyCartWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cartHeader component.
  late CartHeaderModel cartHeaderModel;

  @override
  void initState(BuildContext context) {
    cartHeaderModel = createModel(context, () => CartHeaderModel());
  }

  @override
  void dispose() {
    cartHeaderModel.dispose();
  }
}

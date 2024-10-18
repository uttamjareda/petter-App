import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cart_header_model.dart';
export 'cart_header_model.dart';

class CartHeaderWidget extends StatefulWidget {
  const CartHeaderWidget({super.key});

  @override
  State<CartHeaderWidget> createState() => _CartHeaderWidgetState();
}

class _CartHeaderWidgetState extends State<CartHeaderWidget> {
  late CartHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 2.0,
      child: Container(
        width: 393.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Icon(
                  Icons.chevron_left_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
              ),
              Text(
                'Cart',
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'NeueHaasGrotesk',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
              ),
              Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

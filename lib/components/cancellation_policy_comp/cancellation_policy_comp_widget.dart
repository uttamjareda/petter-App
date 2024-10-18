import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cancellation_policy_comp_model.dart';
export 'cancellation_policy_comp_model.dart';

class CancellationPolicyCompWidget extends StatefulWidget {
  const CancellationPolicyCompWidget({super.key});

  @override
  State<CancellationPolicyCompWidget> createState() =>
      _CancellationPolicyCompWidgetState();
}

class _CancellationPolicyCompWidgetState
    extends State<CancellationPolicyCompWidget> {
  late CancellationPolicyCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancellationPolicyCompModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393.0,
      height: 140.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cancellation Policy',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'NeueHaasGrotesk',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
            ),
            Text(
              'Free cancellations if done more than 3 hrs before the service or if a professional isn\'t assigned. A fee will be charged otherwise.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Text(
                'Learn More',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
              ),
            ),
          ].divide(const SizedBox(height: 5.0)),
        ),
      ),
    );
  }
}

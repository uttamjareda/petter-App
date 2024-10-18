import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'welcome_screen_page_model.dart';
export 'welcome_screen_page_model.dart';

class WelcomeScreenPageWidget extends StatefulWidget {
  const WelcomeScreenPageWidget({super.key});

  @override
  State<WelcomeScreenPageWidget> createState() =>
      _WelcomeScreenPageWidgetState();
}

class _WelcomeScreenPageWidgetState extends State<WelcomeScreenPageWidget> {
  late WelcomeScreenPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeScreenPageModel());
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 393.0,
              height: 852.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Petter_-_App_welcome_page_(393_x_852_px).png',
                  ).image,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/checkout_details/checkout_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'checkout_page_model.dart';
export 'checkout_page_model.dart';

class CheckoutPageWidget extends StatefulWidget {
  const CheckoutPageWidget({super.key});

  @override
  State<CheckoutPageWidget> createState() => _CheckoutPageWidgetState();
}

class _CheckoutPageWidgetState extends State<CheckoutPageWidget> {
  late CheckoutPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckoutPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: 393.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    child: Container(
                      width: 393.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
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
                              'Checkout',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'NeueHaasGrotesk',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Icon(
                              Icons.chevron_left_rounded,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (FFAppState().cartServices.isNotEmpty)
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        wrapWithModel(
                          model: _model.checkoutDetailsModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const CheckoutDetailsWidget(),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  await BookingsRecord.collection.doc().set({
                                    ...createBookingsRecordData(
                                      pet: FFAppState().cartPet,
                                      address: FFAppState().cartAddress,
                                      isActive: true,
                                      user: currentUserReference,
                                      phoneNumber: currentPhoneNumber,
                                      status: BookingStatus.Pending,
                                      totalAmount:
                                          functions.priceSummaryInteger(
                                              FFAppState().cartTotal.toList()),
                                      discount: functions.priceSummaryInteger(
                                          FFAppState().cartDiscount.toList()),
                                      amountPaid: functions.priceSummaryInteger(
                                          FFAppState()
                                              .cartAmountPayable
                                              .toList()),
                                      paymentMode: '',
                                      date: FFAppState().cartOrderDateString,
                                      startTime: FFAppState().cartOrderTimeSlot,
                                      dateDateTime: functions
                                          .getDateTimeFromFormattedString(
                                              FFAppState().cartOrderDateString),
                                      petName: FFAppState().petNameCheckout,
                                      addressLine1:
                                          FFAppState().addressLine1Checkout,
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'created_time':
                                            FieldValue.serverTimestamp(),
                                        'updated_time':
                                            FieldValue.serverTimestamp(),
                                        'services': FFAppState().cartServices,
                                        'servicesNames':
                                            FFAppState().servicesNames,
                                      },
                                    ),
                                  });
                                  FFAppState().cartServices = [];
                                  FFAppState().cartAmountPayable = [];
                                  FFAppState().cartDiscount = [];
                                  FFAppState().cartTotal = [];
                                  FFAppState().cartAddress = null;
                                  FFAppState().cartPet = null;
                                  FFAppState().cartOrderDateString = '';
                                  FFAppState().cartOrderTimeSlot = '';
                                  FFAppState().petNameCheckout = '';
                                  FFAppState().addressLine1Checkout = '';
                                  FFAppState().servicesNames = [];
                                  safeSetState(() {});

                                  context.pushNamed('Home');

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Booking Created !',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                },
                                text: 'Complete Payment',
                                options: FFButtonOptions(
                                  width: 200.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).secondary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'NeueHaasGrotesk',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                  elevation: 2.0,
                                  borderSide: const BorderSide(
                                    color: Color(0x98292728),
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  hoverBorderSide: const BorderSide(
                                    color: Color(0x98292728),
                                  ),
                                  hoverTextColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  hoverElevation: 3.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

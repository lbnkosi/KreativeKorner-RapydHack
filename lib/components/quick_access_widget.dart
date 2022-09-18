import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickAccessWidget extends StatefulWidget {
  const QuickAccessWidget({Key? key}) : super(key: key);

  @override
  _QuickAccessWidgetState createState() => _QuickAccessWidgetState();
}

class _QuickAccessWidgetState extends State<QuickAccessWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              decoration: BoxDecoration(
                color: Color(0x19000000),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Text(
              'Quick Access',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).appBg,
                    fontSize: 18,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('BorrowingManagementPage');
                      },
                      child: Container(
                        width: 80,
                        height: 140,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).color1,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).black,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBillAlt,
                                  color: FlutterFlowTheme.of(context).white,
                                  size: 14,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Borrow',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 14,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                              child: Text(
                                'Apply for a Cash Advance, Personal Loan or revolving credit',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 8,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('IncomeInsurancePlans');
                      },
                      child: Container(
                        width: 80,
                        height: 140,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).color2,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).black,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBillAlt,
                                  color: FlutterFlowTheme.of(context).white,
                                  size: 14,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Insurance',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 14,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                              child: Text(
                                'Apply for Insurance & Income Protection',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 8,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('LiveStreamPage');
                      },
                      child: Container(
                        width: 80,
                        height: 140,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).color3,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).black,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBillAlt,
                                  color: FlutterFlowTheme.of(context).white,
                                  size: 14,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Healthcare',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 14,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                              child: Text(
                                'Apply for short term medical care from a Rapyd partner',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 8,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: Container(
                      width: 80,
                      height: 140,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).color4,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: FaIcon(
                                FontAwesomeIcons.moneyBillAlt,
                                color: FlutterFlowTheme.of(context).white,
                                size: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              'Share Platform',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .title3
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).black,
                                    fontSize: 14,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                            child: Text(
                              'Grow your platforms by offering people a chance to purchase shares in it',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).black,
                                    fontSize: 8,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                    child: Container(
                      width: 80,
                      height: 140,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).color2,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('PropertiesLists');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).black,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBillAlt,
                                  color: FlutterFlowTheme.of(context).white,
                                  size: 14,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Rewards',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 14,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                              child: Text(
                                'Reward people who engage with you by giving them points they can redeem',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 8,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: Container(
                      width: 80,
                      height: 140,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).color1,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('SharesList');
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).black,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBillAlt,
                                  color: FlutterFlowTheme.of(context).white,
                                  size: 14,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                'Rent',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 14,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                              child: Text(
                                'Rent equipment for your next big video from our partners',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 8,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                    child: Container(
                      width: 80,
                      height: 140,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).color3,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: FaIcon(
                                FontAwesomeIcons.moneyBillAlt,
                                color: FlutterFlowTheme.of(context).white,
                                size: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              'Rapyd Score',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .title3
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).black,
                                    fontSize: 14,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                            child: Text(
                              'Reward people who engage with you by giving them points they can redeem',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).black,
                                    fontSize: 8,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: Container(
                      width: 80,
                      height: 140,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).color4,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: FaIcon(
                                FontAwesomeIcons.moneyBillAlt,
                                color: FlutterFlowTheme.of(context).white,
                                size: 14,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Text(
                              'InstantPay',
                              style: FlutterFlowTheme.of(context)
                                  .title3
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).black,
                                    fontSize: 14,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                            child: Text(
                              'Rent equipment for your next big video from our partners',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).black,
                                    fontSize: 8,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

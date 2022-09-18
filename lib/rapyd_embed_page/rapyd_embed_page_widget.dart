import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/nav_bar_widget.dart';
import '../components/top_bar_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RapydEmbedPageWidget extends StatefulWidget {
  const RapydEmbedPageWidget({Key? key}) : super(key: key);

  @override
  _RapydEmbedPageWidgetState createState() => _RapydEmbedPageWidgetState();
}

class _RapydEmbedPageWidgetState extends State<RapydEmbedPageWidget>
    with TickerProviderStateMixin {
  TextEditingController? textController1;

  TextEditingController? textController2;

  TextEditingController? textController3;

  TextEditingController? textController4;

  TextEditingController? textController5;

  bool? switchListTileValue;
  String? radioButtonValue1;
  String? radioButtonValue2;
  String? radioButtonValue3;
  String? radioButtonValue4;
  String? radioButtonValue5;
  String? radioButtonValue6;
  String? radioButtonValue7;
  String? radioButtonValue8;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1000,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<RapydEmbedCheckoutRecord>>(
      stream: queryRapydEmbedCheckoutRecord(
        queryBuilder: (rapydEmbedCheckoutRecord) => rapydEmbedCheckoutRecord
            .where('checkout_id', isEqualTo: 'fbkerjhbf83buikne'),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitPulse(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<RapydEmbedCheckoutRecord>
            rapydEmbedPageRapydEmbedCheckoutRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final rapydEmbedPageRapydEmbedCheckoutRecord =
            rapydEmbedPageRapydEmbedCheckoutRecordList.isNotEmpty
                ? rapydEmbedPageRapydEmbedCheckoutRecordList.first
                : null;
        return Title(
            title: 'RapydEmbedPage',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).white,
              body: SafeArea(
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TopBarWidget(),
                      NavBarWidget(),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).black,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).black,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Text(
                                    'Payment Details',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 1,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0x34FFFFFF),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).black,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  'Embed',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.88,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height: double.infinity,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32, 0, 32, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 32, 0, 0),
                                        child: Text(
                                          'Payment Details',
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 180,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color: Color(0x19000000),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: Text(
                                                  'Payment Methods',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 16, 16, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 130,
                                                        height: 60,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x0C000000),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(8,
                                                                      0, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            8,
                                                                            0,
                                                                            0),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .ccVisa,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .black,
                                                                  size: 18,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            8),
                                                                child: Text(
                                                                  '**   4242',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16, 0,
                                                                    0, 0),
                                                        child: Container(
                                                          width: 130,
                                                          height: 60,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x0D000000),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .ccVisa,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .black,
                                                                    size: 18,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          8),
                                                                  child: Text(
                                                                    '**   4242',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
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
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16, 0,
                                                                    0, 0),
                                                        child: Container(
                                                          width: 130,
                                                          height: 60,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x0C000000),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                                  child: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .ccVisa,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .black,
                                                                    size: 18,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          8),
                                                                  child: Text(
                                                                    '**   4242',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
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
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 16, 16, 16),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x33ADADAD),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(8,
                                                                      0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .percentage,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 12,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  'You qualify for a discount',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                            ],
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
                                      ),
                                      if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                              .bnpl ??
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFCF000D),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                FaIcon(
                                                  FontAwesomeIcons.wallet,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .white,
                                                  size: 14,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: Text(
                                                    'BNPL Enabled',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: TextFormField(
                                          controller: textController1,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Card Holder',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x19000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x19000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            suffixIcon: Icon(
                                              Icons.person,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .black,
                                              size: 16,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: TextFormField(
                                          controller: textController2,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Card Number',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x19000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x19000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            suffixIcon: Icon(
                                              Icons.credit_card_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .black,
                                              size: 16,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 8, 4, 0),
                                              child: TextFormField(
                                                controller: textController3,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: 'Exp Month',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x19000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x19000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  suffixIcon: Icon(
                                                    Icons.update_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .black,
                                                    size: 16,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4, 8, 0, 0),
                                              child: TextFormField(
                                                controller: textController4,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: 'Exp Year',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText2
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x19000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x19000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  suffixIcon: Icon(
                                                    Icons.update,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .black,
                                                    size: 16,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: TextFormField(
                                          controller: textController5,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'CVV',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x19000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x19000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            suffixIcon: Icon(
                                              Icons.security_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .black,
                                              size: 16,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: SwitchListTile(
                                          value: switchListTileValue ??= true,
                                          onChanged: (newValue) => setState(
                                              () => switchListTileValue =
                                                  newValue),
                                          title: Text(
                                            'Terms and Conditions',
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14,
                                                ),
                                          ),
                                          subtitle: Text(
                                            'By checking this you agree to Rapyds terms and conditions',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 10,
                                                ),
                                          ),
                                          tileColor: Color(0xFFF5F5F5),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          activeTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: 'Pay Now',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40,
                                            color: Color(0xFF07D000),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            elevation: 0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height: double.infinity,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32, 0, 32, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 32, 0, 0),
                                        child: Text(
                                          'Value Added Services',
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListView(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .travelInsurance ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'sg_travel_insurance')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0D000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .travelCard ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'in_travel_card')
                                                            .where(
                                                                'interntional',
                                                                isEqualTo:
                                                                    true),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .healthCover ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'in_health_cover')
                                                            .where(
                                                                'interntional',
                                                                isEqualTo:
                                                                    true),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .shippingInsurance ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'in_shipping_insurance')
                                                            .where(
                                                                'interntional',
                                                                isEqualTo:
                                                                    true),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .simService ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'us_sim_service')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .simService ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'sg_sim_service')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .bnpl ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'us_bnpl')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .bnpl ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'gb_bnpl')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .extendedWarranty ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'us_extended_warranty')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .extendedWarranty ??
                                                true)
                                              StreamBuilder<
                                                  List<
                                                      RapydEmbedServicesRecord>>(
                                                stream:
                                                    queryRapydEmbedServicesRecord(
                                                  queryBuilder: (rapydEmbedServicesRecord) =>
                                                      rapydEmbedServicesRecord
                                                          .where('service_id',
                                                              isEqualTo:
                                                                  'sg_extended_warranty')
                                                          .where('country',
                                                              isEqualTo:
                                                                  rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                      .countryFilter),
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child: SpinKitPulse(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          size: 50,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<RapydEmbedServicesRecord>
                                                      containerRapydEmbedServicesRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the document does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final containerRapydEmbedServicesRecord =
                                                      containerRapydEmbedServicesRecordList
                                                              .isNotEmpty
                                                          ? containerRapydEmbedServicesRecordList
                                                              .first
                                                          : null;
                                                  return Container(
                                                    width: double.infinity,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                        color:
                                                            Color(0x0C000000),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(16,
                                                                      16, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              FaIcon(
                                                                FontAwesomeIcons
                                                                    .solidCheckCircle,
                                                                color: Color(
                                                                    0xFF0BC400),
                                                                size: 14,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .name!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(46,
                                                                      0, 16, 0),
                                                          child: Text(
                                                            'BNPL allows you to purchase a product and pay for it in installments',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(46,
                                                                      4, 0, 16),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                containerRapydEmbedServicesRecord!
                                                                    .currencySymbol!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          10,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                              Text(
                                                                containerRapydEmbedServicesRecord!
                                                                    .price!
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          10,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  width: 1,
                                                                  height: 10,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x4C000000),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                containerRapydEmbedServicesRecord!
                                                                    .term!
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          10,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                              Text(
                                                                ' Payment',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          10,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  width: 1,
                                                                  height: 10,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x4D000000),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                containerRapydEmbedServicesRecord!
                                                                    .subCategory!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          10,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .travelInsurance ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'gb_travel_insurance')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .simService ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'gb_sim_service')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .extendedWarranty ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'gb_extended_warranty')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .travelInsurance ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'usa_travel_insurance')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                    .bnpl ??
                                                true)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: StreamBuilder<
                                                    List<
                                                        RapydEmbedServicesRecord>>(
                                                  stream:
                                                      queryRapydEmbedServicesRecord(
                                                    queryBuilder: (rapydEmbedServicesRecord) =>
                                                        rapydEmbedServicesRecord
                                                            .where('service_id',
                                                                isEqualTo:
                                                                    'sg_bnpl')
                                                            .where('country',
                                                                isEqualTo:
                                                                    rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                        .countryFilter),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<RapydEmbedServicesRecord>
                                                        containerRapydEmbedServicesRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerRapydEmbedServicesRecord =
                                                        containerRapydEmbedServicesRecordList
                                                                .isNotEmpty
                                                            ? containerRapydEmbedServicesRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                          color:
                                                              Color(0x0C000000),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        16,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .solidCheckCircle,
                                                                  color: Color(
                                                                      0xFF0BC400),
                                                                  size: 14,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    containerRapydEmbedServicesRecord!
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        0,
                                                                        16,
                                                                        0),
                                                            child: Text(
                                                              'BNPL allows you to purchase a product and pay for it in installments',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        46,
                                                                        4,
                                                                        0,
                                                                        16),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .currencySymbol!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .price!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4C000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .term!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  ' Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child:
                                                                      Container(
                                                                    width: 1,
                                                                    height: 10,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4D000000),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  containerRapydEmbedServicesRecord!
                                                                      .subCategory!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            10,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 1,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0x0E000000),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32, 0, 32, 0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 32, 0, 0),
                                          child: Text(
                                            'Welcome to Rapyd Embed',
                                            style: FlutterFlowTheme.of(context)
                                                .title3,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color: Color(0x0C000000),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: Text(
                                            'How it works',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: Text(
                                            'With Rapyd Embed you can access value added services without having to go to. adifferent service provider',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 10,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color: Color(0x0D000000),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 16, 0, 0),
                                              child: Text(
                                                'Total',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 32, 0, 0),
                                                  child: Text(
                                                    '\$',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 32, 0, 0),
                                                  child: Text(
                                                    '100',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 180,
                                            decoration: BoxDecoration(
                                              color: Color(0x0A000000),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 16, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      FaIcon(
                                                        FontAwesomeIcons.wallet,
                                                        color: Colors.black,
                                                        size: 14,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16, 0,
                                                                    0, 0),
                                                        child: Text(
                                                          'Buy Now Pay Later',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(46, 0, 16, 0),
                                                  child: Text(
                                                    'BNPL allows you to purchase a product and pay for it in installments',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(16,
                                                                    16, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            16,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          100,
                                                                      height: 8,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        'Oct 1',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: Color(0xFFADADAD),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'USD ',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            '100',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            16,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          100,
                                                                      height: 8,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        'Nov 1',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: Color(0xFFADADAD),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'USD ',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            '100',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            16,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          100,
                                                                      height: 8,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        'Dec 1',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              color: Color(0xFFADADAD),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'USD ',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            '100',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            16,
                                                                            0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          100,
                                                                      height: 8,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'Jan 1',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                Color(0xFFADADAD),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          'USD ',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                        Text(
                                                                          '100',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                        .bnpl!) {
                                                      final rapydEmbedCheckoutUpdateData =
                                                          createRapydEmbedCheckoutRecordData(
                                                        bnpl: false,
                                                      );
                                                      await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                          .reference
                                                          .update(
                                                              rapydEmbedCheckoutUpdateData);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'BNPL Disabled for this checkout',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              Color(0x00000000),
                                                        ),
                                                      );
                                                    } else {
                                                      final rapydEmbedCheckoutUpdateData =
                                                          createRapydEmbedCheckoutRecordData(
                                                        bnpl: true,
                                                      );
                                                      await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                          .reference
                                                          .update(
                                                              rapydEmbedCheckoutUpdateData);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'BNPL Enabled for this checkout',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              Color(0x00000000),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                  text:
                                                      'Enable Buy Now Pay Later',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 40,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .black,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .subtitle2
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .white,
                                                              fontSize: 10,
                                                            ),
                                                    elevation: 0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(5),
                                                      bottomRight:
                                                          Radius.circular(5),
                                                      topLeft:
                                                          Radius.circular(0),
                                                      topRight:
                                                          Radius.circular(0),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ).animated([
                                            animationsMap[
                                                'containerOnPageLoadAnimation']!
                                          ]),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: StreamBuilder<
                                              List<RapydEmbedServicesRecord>>(
                                            stream:
                                                queryRapydEmbedServicesRecord(
                                              queryBuilder: (rapydEmbedServicesRecord) =>
                                                  rapydEmbedServicesRecord
                                                      .where('category',
                                                          isEqualTo:
                                                              'insurance')
                                                      .where('sub_category',
                                                          isEqualTo:
                                                              'travel_insurance')
                                                      .where('country',
                                                          isEqualTo:
                                                              rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                  .countryFilter),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitPulse(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<RapydEmbedServicesRecord>
                                                  containerRapydEmbedServicesRecordList =
                                                  snapshot.data!;
                                              final containerRapydEmbedServicesRecord =
                                                  containerRapydEmbedServicesRecordList
                                                          .isNotEmpty
                                                      ? containerRapydEmbedServicesRecordList
                                                          .first
                                                      : null;
                                              return Container(
                                                width: double.infinity,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Color(0x0B000000),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 16, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wallet,
                                                            color: Colors.black,
                                                            size: 14,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              containerRapydEmbedServicesRecord!
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 0, 16, 0),
                                                      child: Text(
                                                        'BNPL allows you to purchase a product and pay for it in installments',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .currencySymbol!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .price!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4C000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .term!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Payment',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4D000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .subCategory!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelInsurance ??
                                                        true)
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FlutterFlowRadioButton(
                                                                options: containerRapydEmbedServicesRecord!
                                                                    .partners!
                                                                    .toList()
                                                                    .toList(),
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() =>
                                                                      radioButtonValue1 =
                                                                          value);
                                                                },
                                                                optionHeight:
                                                                    24,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                buttonPosition:
                                                                    RadioButtonPosition
                                                                        .left,
                                                                direction: Axis
                                                                    .horizontal,
                                                                radioButtonColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                inactiveRadioButtonColor:
                                                                    Color(
                                                                        0x8A000000),
                                                                toggleable:
                                                                    false,
                                                                horizontalAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelInsurance!) {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            travelInsurance:
                                                                false,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Disabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        } else {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            travelInsurance:
                                                                true,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Enabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      text: 'Update Checkout',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 40,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  fontSize: 10,
                                                                ),
                                                        elevation: 0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: StreamBuilder<
                                              List<RapydEmbedServicesRecord>>(
                                            stream:
                                                queryRapydEmbedServicesRecord(
                                              queryBuilder:
                                                  (rapydEmbedServicesRecord) =>
                                                      rapydEmbedServicesRecord
                                                          .where('category',
                                                              isEqualTo:
                                                                  'virtual_cards')
                                                          .where('sub_category',
                                                              isEqualTo:
                                                                  'travel_card'),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitPulse(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<RapydEmbedServicesRecord>
                                                  containerRapydEmbedServicesRecordList =
                                                  snapshot.data!;
                                              final containerRapydEmbedServicesRecord =
                                                  containerRapydEmbedServicesRecordList
                                                          .isNotEmpty
                                                      ? containerRapydEmbedServicesRecordList
                                                          .first
                                                      : null;
                                              return Container(
                                                width: double.infinity,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Color(0x0B000000),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 16, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wallet,
                                                            color: Colors.black,
                                                            size: 14,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              containerRapydEmbedServicesRecord!
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 0, 16, 0),
                                                      child: Text(
                                                        'BNPL allows you to purchase a product and pay for it in installments',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .currencySymbol!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .price!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4C000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .term!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Payment',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4D000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .subCategory!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelInsurance ??
                                                        true)
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FlutterFlowRadioButton(
                                                                options: containerRapydEmbedServicesRecord!
                                                                    .partners!
                                                                    .toList()
                                                                    .toList(),
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() =>
                                                                      radioButtonValue2 =
                                                                          value);
                                                                },
                                                                optionHeight:
                                                                    24,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                buttonPosition:
                                                                    RadioButtonPosition
                                                                        .left,
                                                                direction: Axis
                                                                    .horizontal,
                                                                radioButtonColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                inactiveRadioButtonColor:
                                                                    Color(
                                                                        0x8A000000),
                                                                toggleable:
                                                                    false,
                                                                horizontalAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelCard!) {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            travelCard: false,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Disabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        } else {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            travelCard: true,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Enabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      text: 'Update Checkout',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 40,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  fontSize: 10,
                                                                ),
                                                        elevation: 0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: StreamBuilder<
                                              List<RapydEmbedServicesRecord>>(
                                            stream:
                                                queryRapydEmbedServicesRecord(
                                              queryBuilder:
                                                  (rapydEmbedServicesRecord) =>
                                                      rapydEmbedServicesRecord
                                                          .where('category',
                                                              isEqualTo:
                                                                  'insurance')
                                                          .where('sub_category',
                                                              isEqualTo:
                                                                  'health_cover'),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitPulse(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<RapydEmbedServicesRecord>
                                                  containerRapydEmbedServicesRecordList =
                                                  snapshot.data!;
                                              final containerRapydEmbedServicesRecord =
                                                  containerRapydEmbedServicesRecordList
                                                          .isNotEmpty
                                                      ? containerRapydEmbedServicesRecordList
                                                          .first
                                                      : null;
                                              return Container(
                                                width: double.infinity,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Color(0x0B000000),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 16, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wallet,
                                                            color: Colors.black,
                                                            size: 14,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              containerRapydEmbedServicesRecord!
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 0, 16, 0),
                                                      child: Text(
                                                        'BNPL allows you to purchase a product and pay for it in installments',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .currencySymbol!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .price!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4C000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .term!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Payment',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4D000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .subCategory!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelInsurance ??
                                                        true)
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FlutterFlowRadioButton(
                                                                options: containerRapydEmbedServicesRecord!
                                                                    .partners!
                                                                    .toList()
                                                                    .toList(),
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() =>
                                                                      radioButtonValue3 =
                                                                          value);
                                                                },
                                                                optionHeight:
                                                                    24,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                buttonPosition:
                                                                    RadioButtonPosition
                                                                        .left,
                                                                direction: Axis
                                                                    .horizontal,
                                                                radioButtonColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                inactiveRadioButtonColor:
                                                                    Color(
                                                                        0x8A000000),
                                                                toggleable:
                                                                    false,
                                                                horizontalAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .healthCover!) {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            healthCover: false,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Disabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        } else {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            healthCover: true,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Enabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      text: 'Update Checkout',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 40,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  fontSize: 10,
                                                                ),
                                                        elevation: 0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: StreamBuilder<
                                              List<RapydEmbedServicesRecord>>(
                                            stream:
                                                queryRapydEmbedServicesRecord(
                                              queryBuilder:
                                                  (rapydEmbedServicesRecord) =>
                                                      rapydEmbedServicesRecord
                                                          .where('category',
                                                              isEqualTo:
                                                                  'insurance')
                                                          .where('sub_category',
                                                              isEqualTo:
                                                                  'shipping_insurance'),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitPulse(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<RapydEmbedServicesRecord>
                                                  containerRapydEmbedServicesRecordList =
                                                  snapshot.data!;
                                              final containerRapydEmbedServicesRecord =
                                                  containerRapydEmbedServicesRecordList
                                                          .isNotEmpty
                                                      ? containerRapydEmbedServicesRecordList
                                                          .first
                                                      : null;
                                              return Container(
                                                width: double.infinity,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Color(0x0B000000),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 16, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wallet,
                                                            color: Colors.black,
                                                            size: 14,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              containerRapydEmbedServicesRecord!
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 0, 16, 0),
                                                      child: Text(
                                                        'BNPL allows you to purchase a product and pay for it in installments',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .currencySymbol!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .price!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4C000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .term!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Payment',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4D000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .subCategory!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelInsurance ??
                                                        true)
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FlutterFlowRadioButton(
                                                                options: containerRapydEmbedServicesRecord!
                                                                    .partners!
                                                                    .toList()
                                                                    .toList(),
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() =>
                                                                      radioButtonValue4 =
                                                                          value);
                                                                },
                                                                optionHeight:
                                                                    24,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                buttonPosition:
                                                                    RadioButtonPosition
                                                                        .left,
                                                                direction: Axis
                                                                    .horizontal,
                                                                radioButtonColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                inactiveRadioButtonColor:
                                                                    Color(
                                                                        0x8A000000),
                                                                toggleable:
                                                                    false,
                                                                horizontalAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .shippingInsurance!) {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            shippingInsurance:
                                                                false,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Disabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        } else {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            shippingInsurance:
                                                                true,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Enabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      text: 'Update Checkout',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 40,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  fontSize: 10,
                                                                ),
                                                        elevation: 0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: StreamBuilder<
                                              List<RapydEmbedServicesRecord>>(
                                            stream:
                                                queryRapydEmbedServicesRecord(
                                              queryBuilder:
                                                  (rapydEmbedServicesRecord) =>
                                                      rapydEmbedServicesRecord
                                                          .where('category',
                                                              isEqualTo:
                                                                  'telecom')
                                                          .where('sub_category',
                                                              isEqualTo:
                                                                  'sim_service')
                                                          .where('country',
                                                              isEqualTo:
                                                                  rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                      .countryFilter),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitPulse(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<RapydEmbedServicesRecord>
                                                  containerRapydEmbedServicesRecordList =
                                                  snapshot.data!;
                                              final containerRapydEmbedServicesRecord =
                                                  containerRapydEmbedServicesRecordList
                                                          .isNotEmpty
                                                      ? containerRapydEmbedServicesRecordList
                                                          .first
                                                      : null;
                                              return Container(
                                                width: double.infinity,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Color(0x0B000000),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 16, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wallet,
                                                            color: Colors.black,
                                                            size: 14,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              containerRapydEmbedServicesRecord!
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 0, 16, 0),
                                                      child: Text(
                                                        'BNPL allows you to purchase a product and pay for it in installments',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .currencySymbol!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .price!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4C000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .term!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Payment',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4D000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .subCategory!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelInsurance ??
                                                        true)
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FlutterFlowRadioButton(
                                                                options: containerRapydEmbedServicesRecord!
                                                                    .partners!
                                                                    .toList()
                                                                    .toList(),
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() =>
                                                                      radioButtonValue5 =
                                                                          value);
                                                                },
                                                                optionHeight:
                                                                    24,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                buttonPosition:
                                                                    RadioButtonPosition
                                                                        .left,
                                                                direction: Axis
                                                                    .horizontal,
                                                                radioButtonColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                inactiveRadioButtonColor:
                                                                    Color(
                                                                        0x8A000000),
                                                                toggleable:
                                                                    false,
                                                                horizontalAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .simService!) {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            simService: false,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Disabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        } else {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            simService: true,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Enabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      text: 'Update Checkout',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 40,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  fontSize: 10,
                                                                ),
                                                        elevation: 0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: StreamBuilder<
                                              List<RapydEmbedServicesRecord>>(
                                            stream:
                                                queryRapydEmbedServicesRecord(
                                              queryBuilder:
                                                  (rapydEmbedServicesRecord) =>
                                                      rapydEmbedServicesRecord
                                                          .where('category',
                                                              isEqualTo: 'loan')
                                                          .where('sub_category',
                                                              isEqualTo: 'bnpl')
                                                          .where('country',
                                                              isEqualTo:
                                                                  rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                      .countryFilter),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitPulse(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<RapydEmbedServicesRecord>
                                                  containerRapydEmbedServicesRecordList =
                                                  snapshot.data!;
                                              final containerRapydEmbedServicesRecord =
                                                  containerRapydEmbedServicesRecordList
                                                          .isNotEmpty
                                                      ? containerRapydEmbedServicesRecordList
                                                          .first
                                                      : null;
                                              return Container(
                                                width: double.infinity,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Color(0x0B000000),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 16, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wallet,
                                                            color: Colors.black,
                                                            size: 14,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              containerRapydEmbedServicesRecord!
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 0, 16, 0),
                                                      child: Text(
                                                        'BNPL allows you to purchase a product and pay for it in installments',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .currencySymbol!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .price!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4C000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .term!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Payment',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4D000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .subCategory!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelInsurance ??
                                                        true)
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FlutterFlowRadioButton(
                                                                options: containerRapydEmbedServicesRecord!
                                                                    .partners!
                                                                    .toList()
                                                                    .toList(),
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() =>
                                                                      radioButtonValue6 =
                                                                          value);
                                                                },
                                                                optionHeight:
                                                                    24,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                buttonPosition:
                                                                    RadioButtonPosition
                                                                        .left,
                                                                direction: Axis
                                                                    .horizontal,
                                                                radioButtonColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                inactiveRadioButtonColor:
                                                                    Color(
                                                                        0x8A000000),
                                                                toggleable:
                                                                    false,
                                                                horizontalAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .bnpl!) {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            bnpl: false,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Disabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        } else {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            bnpl: true,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Enabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      text: 'Update Checkout',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 40,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  fontSize: 10,
                                                                ),
                                                        elevation: 0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: StreamBuilder<
                                              List<RapydEmbedServicesRecord>>(
                                            stream:
                                                queryRapydEmbedServicesRecord(
                                              queryBuilder: (rapydEmbedServicesRecord) =>
                                                  rapydEmbedServicesRecord
                                                      .where('category',
                                                          isEqualTo:
                                                              'insurance')
                                                      .where('sub_category',
                                                          isEqualTo:
                                                              'extended_warranty')
                                                      .where('country',
                                                          isEqualTo:
                                                              rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                  .countryFilter),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitPulse(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<RapydEmbedServicesRecord>
                                                  containerRapydEmbedServicesRecordList =
                                                  snapshot.data!;
                                              final containerRapydEmbedServicesRecord =
                                                  containerRapydEmbedServicesRecordList
                                                          .isNotEmpty
                                                      ? containerRapydEmbedServicesRecordList
                                                          .first
                                                      : null;
                                              return Container(
                                                width: double.infinity,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Color(0x0B000000),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 16, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wallet,
                                                            color: Colors.black,
                                                            size: 14,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              containerRapydEmbedServicesRecord!
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 0, 16, 0),
                                                      child: Text(
                                                        'BNPL allows you to purchase a product and pay for it in installments',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .currencySymbol!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .price!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4C000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .term!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Payment',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4D000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .subCategory!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelInsurance ??
                                                        true)
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FlutterFlowRadioButton(
                                                                options: containerRapydEmbedServicesRecord!
                                                                    .partners!
                                                                    .toList()
                                                                    .toList(),
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() =>
                                                                      radioButtonValue7 =
                                                                          value);
                                                                },
                                                                optionHeight:
                                                                    24,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                buttonPosition:
                                                                    RadioButtonPosition
                                                                        .left,
                                                                direction: Axis
                                                                    .horizontal,
                                                                radioButtonColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                inactiveRadioButtonColor:
                                                                    Color(
                                                                        0x8A000000),
                                                                toggleable:
                                                                    false,
                                                                horizontalAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .extendedWarranty!) {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            extendedWarranty:
                                                                false,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Disabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        } else {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            extendedWarranty:
                                                                true,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Enabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      text: 'Update Checkout',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 40,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  fontSize: 10,
                                                                ),
                                                        elevation: 0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 0),
                                          child: StreamBuilder<
                                              List<RapydEmbedServicesRecord>>(
                                            stream:
                                                queryRapydEmbedServicesRecord(
                                              queryBuilder: (rapydEmbedServicesRecord) =>
                                                  rapydEmbedServicesRecord
                                                      .where('category',
                                                          isEqualTo:
                                                              'insurance')
                                                      .where('sub_category',
                                                          isEqualTo:
                                                              'travel_insurance')
                                                      .where('country',
                                                          isEqualTo:
                                                              rapydEmbedPageRapydEmbedCheckoutRecord!
                                                                  .countryFilter),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child: SpinKitPulse(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<RapydEmbedServicesRecord>
                                                  containerRapydEmbedServicesRecordList =
                                                  snapshot.data!;
                                              final containerRapydEmbedServicesRecord =
                                                  containerRapydEmbedServicesRecordList
                                                          .isNotEmpty
                                                      ? containerRapydEmbedServicesRecordList
                                                          .first
                                                      : null;
                                              return Container(
                                                width: double.infinity,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                  color: Color(0x0B000000),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 16, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .wallet,
                                                            color: Colors.black,
                                                            size: 14,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              containerRapydEmbedServicesRecord!
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 0, 16, 0),
                                                      child: Text(
                                                        'BNPL allows you to purchase a product and pay for it in installments',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  46, 4, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .currencySymbol!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .price!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4C000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .term!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Payment',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 1,
                                                              height: 10,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4D000000),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerRapydEmbedServicesRecord!
                                                                .subCategory!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelInsurance ??
                                                        true)
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FlutterFlowRadioButton(
                                                                options: containerRapydEmbedServicesRecord!
                                                                    .partners!
                                                                    .toList()
                                                                    .toList(),
                                                                onChanged:
                                                                    (value) {
                                                                  setState(() =>
                                                                      radioButtonValue8 =
                                                                          value);
                                                                },
                                                                optionHeight:
                                                                    24,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                buttonPosition:
                                                                    RadioButtonPosition
                                                                        .left,
                                                                direction: Axis
                                                                    .horizontal,
                                                                radioButtonColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                inactiveRadioButtonColor:
                                                                    Color(
                                                                        0x8A000000),
                                                                toggleable:
                                                                    false,
                                                                horizontalAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (rapydEmbedPageRapydEmbedCheckoutRecord!
                                                            .travelInsurance!) {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            travelInsurance:
                                                                false,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Disabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        } else {
                                                          final rapydEmbedCheckoutUpdateData =
                                                              createRapydEmbedCheckoutRecordData(
                                                            travelInsurance:
                                                                true,
                                                          );
                                                          await rapydEmbedPageRapydEmbedCheckoutRecord!
                                                              .reference
                                                              .update(
                                                                  rapydEmbedCheckoutUpdateData);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'BNPL Enabled for this checkout',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0x00000000),
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      text: 'Update Checkout',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 40,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .black,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                  fontSize: 10,
                                                                ),
                                                        elevation: 0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
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
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}

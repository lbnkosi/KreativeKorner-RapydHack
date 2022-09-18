import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../components/nav_bar_widget.dart';
import '../components/top_bar_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyDetailsPageWidget extends StatefulWidget {
  const PropertyDetailsPageWidget({
    Key? key,
    this.id,
    this.checkoutId,
  }) : super(key: key);

  final String? id;
  final String? checkoutId;

  @override
  _PropertyDetailsPageWidgetState createState() =>
      _PropertyDetailsPageWidgetState();
}

class _PropertyDetailsPageWidgetState extends State<PropertyDetailsPageWidget> {
  ApiCallResponse? apiResult6vs;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ApartmentsRecord>>(
      stream: queryApartmentsRecord(
        queryBuilder: (apartmentsRecord) =>
            apartmentsRecord.where('id', isEqualTo: widget.id),
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
        List<ApartmentsRecord> propertyDetailsPageApartmentsRecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final propertyDetailsPageApartmentsRecord =
            propertyDetailsPageApartmentsRecordList.isNotEmpty
                ? propertyDetailsPageApartmentsRecordList.first
                : null;
        return Title(
            title: 'PropertyDetailsPage',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              body: SafeArea(
                child: StreamBuilder<List<CreatorRecord>>(
                  stream: queryCreatorRecord(
                    queryBuilder: (creatorRecord) => creatorRecord
                        .where('email', isEqualTo: currentUserEmail),
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
                    List<CreatorRecord> columnCreatorRecordList =
                        snapshot.data!;
                    final columnCreatorRecord =
                        columnCreatorRecordList.isNotEmpty
                            ? columnCreatorRecordList.first
                            : null;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TopBarWidget(),
                        NavBarWidget(),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                          child: Text(
                            'Book This Apartment Today',
                            style:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 26,
                                    ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: 100,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.7,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.9,
                                                    height: 320,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFDBE2E7),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            child:
                                                                Image.network(
                                                              propertyDetailsPageApartmentsRecord!
                                                                  .image!,
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16,
                                                                      16,
                                                                      16,
                                                                      16),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Card(
                                                                    clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                    color: Color(
                                                                        0x3A000000),
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    child:
                                                                        FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30,
                                                                      buttonSize:
                                                                          46,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_back_rounded,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            24,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ),
                                                                  Card(
                                                                    clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                    color: Color(
                                                                        0x3A000000),
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    child:
                                                                        FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          30,
                                                                      buttonSize:
                                                                          46,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .favorite_border,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            24,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  propertyDetailsPageApartmentsRecord!
                                                      .name!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title1,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  propertyDetailsPageApartmentsRecord!
                                                      .address!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 24, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                RatingBarIndicator(
                                                  itemBuilder:
                                                      (context, index) => Icon(
                                                    Icons.star_rounded,
                                                    color: Color(0xFFFFA130),
                                                  ),
                                                  direction: Axis.horizontal,
                                                  rating: 5,
                                                  unratedColor:
                                                      Color(0xFF95A1AC),
                                                  itemCount: 5,
                                                  itemSize: 24,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: Text(
                                                    propertyDetailsPageApartmentsRecord!
                                                        .reviews!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 16, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'DESCRIPTION',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 24),
                                                    child: Text(
                                                      propertyDetailsPageApartmentsRecord!
                                                          .description!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 22, 0, 12),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 16, 16, 16),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          propertyDetailsPageApartmentsRecord!
                                                              .price!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .subtitle1
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(4,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            '+ taxes',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        propertyDetailsPageApartmentsRecord!
                                                            .interval!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    setState(() => FFAppState()
                                                                .checkoutId =
                                                            random_data
                                                                .randomString(
                                                          1,
                                                          20,
                                                          true,
                                                          true,
                                                          true,
                                                        ));
                                                    apiResult6vs =
                                                        await AccessPointCall
                                                            .call(
                                                      route: 'create_checkout',
                                                      email: currentUserEmail,
                                                      refId: FFAppState()
                                                          .checkoutId,
                                                      amount:
                                                          propertyDetailsPageApartmentsRecord!
                                                              .price,
                                                      productId:
                                                          propertyDetailsPageApartmentsRecord!
                                                              .id,
                                                      customerId:
                                                          columnCreatorRecord!
                                                              .customerId,
                                                      currency: 'USD',
                                                      country: 'US',
                                                      userType:
                                                          columnCreatorRecord!
                                                              .userType,
                                                      collectionName:
                                                          'apartments',
                                                      checkoutType:
                                                          'apartment_bookings',
                                                    );
                                                    if ((apiResult6vs
                                                            ?.succeeded ??
                                                        true)) {
                                                      context.pushNamed(
                                                        'CheckoutPage',
                                                        queryParams: {
                                                          'checkoutId':
                                                              serializeParam(
                                                                  widget
                                                                      .checkoutId,
                                                                  ParamType
                                                                      .String),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    setState(() {});
                                                  },
                                                  text: 'Book Now',
                                                  options: FFButtonOptions(
                                                    width: 170,
                                                    height: 50,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .white,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .subtitle1,
                                                    elevation: 0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
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
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ));
      },
    );
  }
}
